package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.SessaoDAO;
import br.com.fatec.cinetech.entity.Sala;
import br.com.fatec.cinetech.entity.Sessao;



@Controller
public class SessaoController {

	
				
			@Autowired
			private SessaoDAO sessaoDAO;
			
			@RequestMapping("/sessao")
			public String setupForm(Map<String, Object> map){
				Sessao sessao =new Sessao();
				map.put("sessao", sessao);
				map.put("sessaoList", sessaoDAO.getAll());
				return "sessao";
			}
			@RequestMapping(value="/sessao.do", method=RequestMethod.POST)
			public String doActions(@ModelAttribute Sessao sessao, BindingResult result, @RequestParam String action, Map<String, Object> map){
				Sessao sessaoResult = new Sessao();
				switch(action.toLowerCase()){	
				case "add":
					sessaoDAO.adiciona(sessao);
					sessaoResult = sessao;
					break;
				case "edit":
					sessaoDAO.altera(sessao);
					sessaoResult = sessao;
					break;
				case "delete":
					sessaoDAO.remove(sessao);
					sessaoResult = sessao;
					break;
				case "search":
					Sessao sessaobuscada =sessaoDAO.buscaPorId(sessao.getId_sessao());
					sessaoResult = sessaobuscada!=null ? sessaobuscada : new Sessao();
					break;
				}
				map.put("sessao", sessaoResult);
				map.put("sessaoList", sessaoDAO.getAll());
				return "sessao";
			}
		}