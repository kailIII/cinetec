package br.com.fatec.cinetech.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fatec.cinetech.dao.FormaPagamentoDAO;
import br.com.fatec.cinetech.entity.FormaPagamento;

@Controller
@RequestMapping("/admin")
public class FormaPagamentoController {

	@Autowired
	
	private FormaPagamentoDAO formaDAO;

	@RequestMapping("/forma")
	public String setupForm(Map<String, Object> map) {
		FormaPagamento forma = new FormaPagamento();
		map.put("forma", forma);
		map.put("formaList", formaDAO.getAll());
		return "forma";
	}

	@RequestMapping(value = "/forma.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute FormaPagamento forma,
			BindingResult result, @RequestParam String action,
			Map<String, Object> map) {
		FormaPagamento formaResult = new FormaPagamento();
		switch (action.toLowerCase()) {
		case "add":
			formaDAO.adiciona(forma);
			formaResult = forma;
			break;
		case "edit":
			formaDAO.altera(forma);
			formaResult = forma;
			break;
		case "delete":
			formaDAO.remove(forma);
			formaResult = forma;
			break;
		case "search":
			FormaPagamento formabuscada = formaDAO.buscaPorId(forma
					.getId_forma());
			formaResult = formabuscada != null ? formabuscada
					: new FormaPagamento();
			break;
		}
		map.put("forma", formaResult);
		map.put("formaList", formaDAO.getAll());
		return "forma";
	}
}
