package br.com.fatec.cinetech.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fatec.cinetech.dao.PoltronaDAO;
import br.com.fatec.cinetech.dao.UsuarioDAO;
import br.com.fatec.cinetech.entity.Filme;
import br.com.fatec.cinetech.entity.Permissao;
import br.com.fatec.cinetech.entity.Poltrona;
import br.com.fatec.cinetech.entity.Sala;
import br.com.fatec.cinetech.entity.Sessao;
import br.com.fatec.cinetech.entity.Usuario;

@Controller
@RequestMapping("/")
public class UsuarioController {

	@Autowired
	private UsuarioDAO usuariodao;
	
	@Autowired
	private PoltronaDAO poltronaDAO;

	@RequestMapping("loginForm")
	public String loginForm() {
		return "formulario-login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario ,HttpSession session) {
		
		List<Usuario> usuarios = usuariodao.getAll();
		Permissao p =  new  Permissao();
		String result = "";
		
		for (Usuario u : usuarios) {
		
			if (usuario.getUsername().equals(u.getUsername())&& usuario.getPassword().equals(u.getPassword())) {
				p = u.getPermissao();		  
				if (p.getDesc_permissao().equals("cliente") ) {
					result = "menu";
					  session.setAttribute("usuarioLogado", usuario);
					  break;
				} else {
					result = "admin";
					  session.setAttribute("usuarioLogado", usuario);
					  break;
				}
			
			} else {
				result = "redirect:loginForm";	
				
			}
		}
		return result;
	}
	@RequestMapping("logout")
	public String logout(HttpServletRequest request, Usuario usuario) {
		  HttpSession session = request.getSession(false);
		session.removeAttribute(usuario.getUsername());
		session.removeAttribute(usuario.getPassword());
		session.invalidate();
		return "redirect:loginForm";

	}
	
	@RequestMapping("menu/compraingresso")
	public String compraIngresso(Usuario usuario, ArrayList<Filme> filmes, ArrayList<Sessao> sessoes , ArrayList<Sala> salas,ArrayList<Poltrona> Poltronas) {
		  
		
		
		
		
		return "result";

	}
	
	
	@RequestMapping("menu/escolherPoltrona")
	public String escolhePoltrona(Poltrona poltrona) {
		String result;
		Poltrona p = poltrona;
		p = poltronaDAO.buscaPorId(poltrona.getId_poltrona());
		
		if(p.getOcupado().equals(true)){
			result= "disponivel";
		}else{
			result = "indisponivel";
		}		
		
		return result;

	}
	
	
	

}

