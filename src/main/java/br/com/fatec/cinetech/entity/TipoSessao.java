package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TipoSessao")
public class TipoSessao {
	
	
	@Id
	@GeneratedValue
	private int idTipo_sessao;
	private String desc_tipo_sessao;
	private String dub_leg_sessao;
	
	
	public int getIdTipo_sessao() {
		return idTipo_sessao;
	}
	public void setIdTipo_sessao(int idTipo_sessao) {
		this.idTipo_sessao = idTipo_sessao;
	}
	public String getDesc_tipo_sessao() {
		return desc_tipo_sessao;
	}
	public void setDesc_tipo_sessao(String desc_tipo_sessao) {
		this.desc_tipo_sessao = desc_tipo_sessao;
	}
	public String getDub_leg_sessao() {
		return dub_leg_sessao;
	}
	public void setDub_leg_sessao(String dub_leg_sessao) {
		this.dub_leg_sessao = dub_leg_sessao;
	}

}
