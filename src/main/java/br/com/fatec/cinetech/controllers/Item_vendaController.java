package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.Item_vendaDAO;
import br.com.fatec.cinetech.entity.Item_Venda;
import br.com.fatec.cinetech.entity.Sala;



@Controller
public class Item_vendaController {

	
				
			@Autowired
			private Item_vendaDAO Item_vendaDAO;
			
			@RequestMapping("/Item_venda")
			public String setupForm(Map<String, Object> map){
				Item_Venda Item_venda =new Item_Venda();
				map.put("Item_venda", Item_venda);
				map.put("Item_vendaList", Item_vendaDAO.getAll());
				return "Item_venda";
			}
			@RequestMapping(value="/Item_venda.do", method=RequestMethod.POST)
			public String doActions(@ModelAttribute Item_Venda Item_venda, BindingResult result, @RequestParam String action, Map<String, Object> map){
				Item_Venda Item_vendaResult = new Item_Venda();
				switch(action.toLowerCase()){	
				case "add":
					Item_vendaDAO.adiciona(Item_venda);
					Item_vendaResult = Item_venda;
					break;
				case "edit":
					Item_vendaDAO.altera(Item_venda);
					Item_vendaResult = Item_venda;
					break;
				case "delete":
					Item_vendaDAO.remove(Item_venda);
					Item_vendaResult = Item_venda;
					break;
				case "search":
					Item_Venda Item_vendabuscada = Item_vendaDAO.buscaPorId(Item_venda.getId_item_Venda());
					Item_vendaResult = Item_vendabuscada!=null ? Item_vendabuscada : new Item_Venda();
					break;
				}
				map.put("Item_venda", Item_vendaResult);
				map.put("Item_vendaList", Item_vendaDAO.getAll());
				return "Item_venda";
			}
		}