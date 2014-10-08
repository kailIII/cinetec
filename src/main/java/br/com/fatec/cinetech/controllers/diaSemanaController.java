package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.diasemanaDAO;
import br.com.fatec.cinetech.entity.diasemana;


@Controller
public class diaSemanaController {
	@Autowired
	private diasemanaDAO diasemanaDAO;
	
	@RequestMapping("/diasemana")
	public String setupForm(Map<String, Object> map){
		diasemana diasemana = new diasemana();
		map.put("diasemana", diasemana);
		map.put("diasemanaList", diasemanaDAO.getAll());
		return "diasemana";
	}
	@RequestMapping(value="/diasemana.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute diasemana diasemana, BindingResult result, @RequestParam String action, Map<String, Object> map){
		diasemana diasemanaResult = new diasemana();
		switch(action.toLowerCase()){	
		case "add":
			diasemanaDAO.adiciona(diasemana);
			diasemanaResult = diasemana;
			break;
		case "edit":
			diasemanaDAO.altera(diasemana);
			diasemanaResult = diasemana;
			break;
		case "delete":
			diasemanaDAO.remove(diasemana);
			diasemanaResult = diasemana;
			break;
		case "search":
			diasemana diasemanabuscado = diasemanaDAO.buscaPorId(diasemana.getId_dia_Semana());
			diasemanaResult = diasemanabuscado!=null ? diasemanabuscado : new diasemana();
			break;
		}
		map.put("diasemana", diasemanaResult);
		map.put("diasemanaList", diasemanaDAO.getAll());
		return "diasemana";
	}
}
