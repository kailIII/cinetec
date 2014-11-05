/**
 * Funções a serem utilizadas nas páginas do site
 */

function limpa(elementId, campo) {
	var linhas = $("#" + elementId + " table tr").length;
	for(var i = 1; i < linhas; i++)
			document.getElementById(campo+i).value = "";
}