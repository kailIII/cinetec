package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Poltrona {
	
	
	@Id
	@GeneratedValue
	private int id_poltrona;
	private String num_poltrona;
	private Boolean ocupado;
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
	public Boolean getOcupado() {
		return ocupado;
	}
	public void setOcupado(Boolean ocupado) {
		this.ocupado = ocupado;
	}
	
	

}
