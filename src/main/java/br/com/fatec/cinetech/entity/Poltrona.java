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
public class Poltrona {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_poltrona;
	private String num_poltrona;
	
	@OneToMany(mappedBy = "poltrona", targetEntity = SalaPoltrona.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<SalaPoltrona> salaPoltrona;

	public int getId_poltrona() {
		return id_poltrona;
	}

	public void setId_poltrona(int id_poltrona) {
		this.id_poltrona = id_poltrona;
	}

	public String getNum_poltrona() {
		return num_poltrona;
	}

	public void setNum_poltrona(String num_poltrona) {
		this.num_poltrona = num_poltrona;
	}

	public List<SalaPoltrona> getSalaPoltrona() {
		return salaPoltrona;
	}

	public void setSalaPoltrona(List<SalaPoltrona> salaPoltrona) {
		this.salaPoltrona = salaPoltrona;
	}

}
