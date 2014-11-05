AjaxRequest = {
		addFilme: function(formulario) {
			var filme = $(formulario).serialize();
			$.ajax({
				url: "filme.add",
				type: "post",
				dataType: "application/json",
				data: filme,
				success: function(resp) {
					alert("Filme cadastrado / atualizado com sucesso!");
				},
				error: function(resp) {
					alert("Erro ao cadastrar / atualizar filme: " + resp.statusText);
				}
			});
		},
		
		removeFilme: function(id) {
			$.ajax({
				url: "filme.remove",
				data: "id_filme=" + id,
				type: "POST",
				success: function(resp) {
					alert(resp);
				},
				error: function(resp) {
					alert("Erro ao remover o filme: " + resp.statusText);
				}
			});
		} 
}