package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.SalaDAO;
import br.com.fatec.cinetech.entity.Sala;



@Controller
@RequestMapping("/admin")
public class SalaController {

	
				
			@Autowired
			private SalaDAO salaDAO;
			
			@RequestMapping("sala")
			public String setupForm(Map<String, Object> map){
				Sala sala =new Sala();
				map.put("sala", sala);
				map.put("salaList", salaDAO.getAll());
				return "sala";
			}
			@RequestMapping(value="sala.do", method=RequestMethod.POST)
			public String doActions(@ModelAttribute Sala sala, BindingResult result, @RequestParam String action, Map<String, Object> map){
				Sala salaResult = new Sala();
				switch(action.toLowerCase()){	
				case "add":
					salaDAO.adiciona(sala);
					salaResult = sala;
					break;
				case "edit":
					salaDAO.altera(sala);
					salaResult = sala;
					break;
				case "delete":
					salaDAO.remove(sala);
					salaResult = sala;
					break;
				case "search":
					Sala salabuscada = salaDAO.buscaPorId(sala.getId_sala());
					salaResult = salabuscada!=null ? salabuscada : new Sala();
					break;
				}
				map.put("sala", salaResult);
				map.put("salaList", salaDAO.getAll());
				return "sala";
			}
		}