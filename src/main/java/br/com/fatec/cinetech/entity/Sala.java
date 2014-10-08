package br.com.fatec.cinetech.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Sala {
	
	@Id
	@GeneratedValue
	private int id_sala;
	private int num_sala;
	@ManyToMany
	@JoinTable(name = "Sala_has_Poltrona",
		joinColumns = @JoinColumn(name = "id_sala"),
		inverseJoinColumns = @JoinColumn(name="id_poltrona"))
	private List<Poltrona> poltronas;
	
	
	
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
	public List<Poltrona> getPoltronas() {
		return poltronas;
	}
	public void setPoltronas(List<Poltrona> poltronas) {
		this.poltronas = poltronas;
	}
	
	
	
	

}