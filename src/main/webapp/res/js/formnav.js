$(document).ready(function() {
	$("#crud-container nav ul li").each(function(i) {
		if ($(this).attr("class") != "selected")
			$("#crud-container div:eq("+i+")").css("display", "none");
	})
	
	$("#crud-container nav ul li").on("click", function() {
		var selectedLi = $(this);
		var indexLi = selectedLi.index(); 
		if (selectedLi.attr("class") != "selected") {
			$("#crud-container nav ul li").each(function(i) {
				if($(this).attr("class") == "selected") {
					$(this).removeClass("selected");
					$("#crud-container div:eq("+i+")").slideToggle();
				}
			});
			
			$("#crud-container div").eq(indexLi).slideToggle();
			selectedLi.addClass("selected");
		}
	});
	
	if ($(".tbl-data tr").length == 1) {
		var colspan = $(".tbl-data tr th").length;
		$(".tbl-data").append("<tr><td colspan=" + colspan +">Não há registros</td></tr>");
	}
})