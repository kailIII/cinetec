package br.com.fatec.cinetech.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Sala {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_sala;
	private int num_sala;
	@OneToMany(mappedBy = "sala", targetEntity = SalaPoltrona.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<SalaPoltrona> salaPoltrona;

	public int getId_sala() {
		return id_sala;
	}

	public void setId_sala(int id_sala) {
		this.id_sala = id_sala;
	}

	public int getNum_sala() {
		return num_sala;
	}

	public void setNum_sala(int num_sala) {
		this.num_sala = num_sala;
	}

	public List<SalaPoltrona> getSalaPoltrona() {
		return salaPoltrona;
	}

	public void setSalaPoltrona(List<SalaPoltrona> salaPoltrona) {
		this.salaPoltrona = salaPoltrona;
	}

}