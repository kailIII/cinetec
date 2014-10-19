package br.com.fatec.cinetech.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class SalaPoltrona {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Boolean ocupado;
	@ManyToOne
	@JoinColumn(name="id_poltrona")
	 private Poltrona poltrona;
	@ManyToOne
	@JoinColumn(name="id_sala")
	 private Sala sala;
	
	@OneToMany(mappedBy = "salaPoltrona", targetEntity = Sessao.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Sessao> sessoes;
		

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public Boolean getOcupado() {
		return ocupado;
	}

	public void setOcupado(Boolean ocupado) {
		this.ocupado = ocupado;
	}

	public Poltrona getPoltrona() {
		return poltrona;
	}

	public void setPoltrona(Poltrona poltrona) {
		this.poltrona = poltrona;
	}

	public Sala getSala() {
		return sala;
	}

	public void setSala(Sala sala) {
		this.sala = sala;
	}

	public List<Sessao> getSessoes() {
		return sessoes;
	}

	public void setSessoes(List<Sessao> sessoes) {
		this.sessoes = sessoes;
	}

}
