package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.UsuarioDAO;
import br.com.fatec.cinetech.entity.Usuario;

@Controller
@RequestMapping("/admin")
public class UsuarioController {

	@Autowired
	private UsuarioDAO usuarioDAO;


	@RequestMapping("/usuario")
	public String setupForm(Map<String, Object> map) {
		Usuario  usuario = new Usuario();
		map.put("usuario", usuario);
		map.put("usuarioList", usuarioDAO.getAll());
		return "usuario";
	}

	@RequestMapping(value = "/usuario.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute Usuario usuario, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		Usuario usuarioResult = new Usuario();
		switch (action.toLowerCase()) {

		case "excluir":
			usuarioDAO.remove(usuario);
			usuarioResult = usuario;
			break;
		case "buscar":
			Usuario  usuariobuscado = usuarioDAO.buscaPorId(usuario.getId_usuario());
			usuarioResult = usuariobuscado != null ? usuariobuscado : new Usuario();
			break;
		}
		map.put("usuario", usuarioResult);
		map.put("usuarioList", usuarioDAO.getAll());
		return "usuario";
	}

	
	
		
	
	
	
	
	
	
	
	


}