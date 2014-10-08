package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Permissao")
public class Permissao {
	
	@Id
	@GeneratedValue
	private int id_permissao;
	private String desc_permissao;
	public int getId_permissao() {
		return id_permissao;
	}
	public void setId_permissao(int id_permissao) {
		this.id_permissao = id_permissao;
	}
	public String getDesc_permissao() {
		return desc_permissao;
	}
	public void setDesc_permissao(String desc_permissao) {
		this.desc_permissao = desc_permissao;
	}

}
