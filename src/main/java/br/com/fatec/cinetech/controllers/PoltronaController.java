package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.PoltronaDAO;
import br.com.fatec.cinetech.dao.diasemanaDAO;
import br.com.fatec.cinetech.entity.Filme;
import br.com.fatec.cinetech.entity.Poltrona;
import br.com.fatec.cinetech.entity.diasemana;


@Controller
@RequestMapping("/admin")
public class PoltronaController {
	@Autowired
	private PoltronaDAO poltronaDAO;
	
	@RequestMapping("/poltrona")
	public String setupForm(Map<String, Object> map){
		Poltrona poltrona = new Poltrona();
		map.put("poltrona", poltrona);
		map.put("poltronaList", poltronaDAO.getAll());
		return "poltrona";
	}
	@RequestMapping(value="/poltrona.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Poltrona poltrona, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Poltrona poltronaResult = new Poltrona();
		switch(action.toLowerCase()){	
		case "adicionar":
			poltronaDAO.adiciona(poltrona);
			poltronaResult = poltrona;
			break;
		case "editar":
			poltronaDAO.altera(poltrona);
			poltronaResult = poltrona;
			break;
		case "excluir":
			poltronaDAO.remove(poltrona);
			poltronaResult = poltrona;
			break;
		case "buscar":
			Poltrona poltronabuscada = poltronaDAO.buscaPorId(poltrona.getId_poltrona());
			poltronaResult = poltronabuscada!=null ? poltronabuscada : new Poltrona();
			break;
		}
		map.put("poltrona", poltronaResult);
		map.put("poltronaList", poltronaDAO.getAll());
		return "poltrona";
	}
	
	@RequestMapping(value = "/poltrona.add", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute Poltrona poltrona, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		Poltrona poltronaResult = new Poltrona();
			
		poltronaDAO.adiciona(poltrona);
		poltronaResult = poltrona;
		
		map.put("poltrona", poltronaResult);
		map.put("poltronaList", poltronaDAO.getAll());
		return "poltrona";
	}
	
	
	
}
