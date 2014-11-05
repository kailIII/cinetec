package br.com.fatec.cinetech.controllers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.fatec.cinetech.dao.FilmeDAO;
import br.com.fatec.cinetech.entity.Filme;
import br.com.fatec.cinetech.entity.Usuario;

@Controller
@RequestMapping("/admin")
public class FilmeController {

	@Autowired
	private FilmeDAO filmeDAO;

	@RequestMapping("/filme")
	public String setupForm(Map<String, Object> map) {
		Filme filme = new Filme();
		map.put("filme", filme);
		map.put("filmeList", filmeDAO.getAll());
		return "filme";
	}
	

	@RequestMapping(value = "/filme.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute Filme filme, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		Filme filmeResult = new Filme();
		switch (action.toLowerCase()) {

		case "editar":
			filmeDAO.altera(filme);
			filmeResult = filme;
			break;
		case "excluir":
			filmeDAO.remove(filme);
			filmeResult = new Filme();
			break;
		case "buscar":
			Filme filmebuscado = filmeDAO.buscaPorId(filme.getId_filme());
			filmeResult = filmebuscado != null ? filmebuscado : new Filme();
			break;
		}
		map.put("filme", filmeResult);
		map.put("filmeList", filmeDAO.getAll());
		return "filme";
	}

	@RequestMapping(value = "/filme.add", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute Filme filme, BindingResult result,
			Map<String, Object> map) {
		Filme filmeResult = new Filme();
		
		filmeDAO.adiciona(filme);

		map.put("filme", filmeResult);
		map.put("filmeList", filmeDAO.getAll());
		return "filme";
	}
//	@RequestMapping(value = "/filme.remove", method = RequestMethod.POST)
//	public @ResponseBody String remover(@ModelAttribute Filme filme, BindingResult result) throws Exception {
//		filmeDAO.remove(filme);
//		if (!result.hasErrors()) {
//			return "Filme removido com sucesso";
//		} else {
//			return "Erro ao cadastrar filme";
//		}		
//	}	
	
	
	
		
	@RequestMapping("logout")
	public String logout(HttpServletRequest request, Usuario usuario) {
		  HttpSession session = request.getSession(false);
		session.removeAttribute(usuario.getUsername());
		session.removeAttribute(usuario.getPassword());
		session.invalidate();
		return "redirect:portal";

	}
	
	
	@RequestMapping("voltar")
	public String voltar() {
		 return "forward:admin";

	}
	
	
	
	
	


}