package br.com.fatec.cinetech.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fatec.cinetech.dao.FilmeDAO;
import br.com.fatec.cinetech.dao.UsuarioDAO;
import br.com.fatec.cinetech.entity.Filme;
import br.com.fatec.cinetech.entity.Permissao;
import br.com.fatec.cinetech.entity.Usuario;
import br.com.fatec.cinetech.service.FuncoesHash;

@Controller
@RequestMapping("/")
public class PortalController {

	@Autowired
	private UsuarioDAO usuariodao;

	@Autowired
	private FilmeDAO filmeDAO;
	
	@RequestMapping("/portal")
	public String retornaPortal(Map<String, Object> map){
//		  List<Filme> filmes = filmeDAO.getAll(); 
//		  model.addAttribute("filmes",filmes);
		Filme filme = new Filme();
		map.put("filme", filme);
		map.put("filmeList", filmeDAO.getAll());
		return "portal";
	}
	
	@RequestMapping("/cadastro")
	public String retornaCadastro(Map<String, Object> map){

		return "cadastro";
	}
	@RequestMapping("/efetuaLogin")
	public String efetuaLogin(Usuario usuario ,HttpSession session,Model model) {
		
		List<Usuario> usuarios = usuariodao.getAll();
		Permissao p =  new  Permissao();
		String result = "";
		
		for (Usuario u : usuarios) {
			usuario.setPassword(FuncoesHash.md5(usuario.getPassword()));
			if (usuario.getUsername().equals(u.getUsername())&& usuario.getPassword().equals(u.getPassword())) {
				p = u.getPermissao();		  
				if (p.getDesc_permissao().equals("cliente") ) {
					result = "redirect:portal";
					  session.setAttribute("usuarioLogado", usuario);
					
					  break;
				} else {
					result = "admin";
					  session.setAttribute("usuarioLogado", usuario);
					  break;
				}
			
			} else {
				result = "redirect:portal";	
				
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
		return "redirect:portal";

	}
	
	
	@RequestMapping("/cadastrar")
	public String cadastrar(Usuario usuario, Model model){
//		Usuario user = usuariodao.buscaPorCpf(usuario.getCpf());
//		if( user==null){
			usuario.setPassword(FuncoesHash.md5(usuario.getPassword()));
			Permissao permissao = new Permissao();
			permissao.setId_permissao(1);
			usuario.setPermissao(permissao);
			usuariodao.adiciona(usuario);
//		}else{
//		  String mensagem = "usuário já cadastrado " ;
//			  model.addAttribute("mensagem", mensagem);
//		}		
		return "portal";
	}
	
}
