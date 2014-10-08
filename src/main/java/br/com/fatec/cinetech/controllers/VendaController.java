package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.VendaDAO;
import br.com.fatec.cinetech.entity.Venda;



@Controller
public class VendaController {

	
				
			@Autowired
			private VendaDAO vendaDAO;
			
			@RequestMapping("/venda")
			public String setupForm(Map<String, Object> map){
				Venda venda =new Venda();
				map.put("venda", venda);
				map.put("vendaList", vendaDAO.getAll());
				return "venda";
			}
			@RequestMapping(value="/venda.do", method=RequestMethod.POST)
			public String doActions(@ModelAttribute Venda venda, BindingResult result, @RequestParam String action, Map<String, Object> map){
				Venda vendaResult = new Venda();
				switch(action.toLowerCase()){	
				case "add":
					vendaDAO.adiciona(venda);
					vendaResult = venda;
					break;
				case "edit":
					vendaDAO.altera(venda);
					vendaResult =venda;
					break;
				case "delete":
					vendaDAO.remove(venda);
					vendaResult = venda;
					break;
				case "search":
					Venda vendabuscada = vendaDAO.buscaPorId(venda.getId_venda());
					vendaResult = vendabuscada!=null ? vendabuscada : new Venda();
					break;
				}
				map.put("venda", vendaResult);
				map.put("vendaList", vendaDAO.getAll());
				return "venda";
			}
		}