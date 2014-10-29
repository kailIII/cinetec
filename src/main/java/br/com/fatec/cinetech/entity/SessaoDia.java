package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class SessaoDia {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_sessao_dia;
	@ManyToOne
	@JoinColumn(name = "id_sessao" )
	private Sessao sessao;
	@ManyToOne
	@JoinColumn(name = "id_dia_Semana" )
	private diasemana diasemana;
	
	
	public int getId_sessao_dia() {
		return id_sessao_dia;
	}
	public void setId_sessao_dia(int id_sessao_dia) {
		this.id_sessao_dia = id_sessao_dia;
	}
	public Sessao getSessao() {
		return sessao;
	}
	public void setSessao(Sessao sessao) {
		this.sessao = sessao;
	}
	public diasemana getDiasemana() {
		return diasemana;
	}
	public void setDiasemana(diasemana diasemana) {
		this.diasemana = diasemana;
	}
	
}
