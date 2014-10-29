package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;




@Entity
@Table(name = "Usuario")
public class Usuario {
	
		
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_usuario;
	@ManyToOne
	@JoinColumn(name = "id_permissao" )
	private Permissao permissao;
	private String nm_usuario;
	private String sbr_usuario;
	private String username;
	private String password;
	private int cpf_usuario;

	public int getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public Permissao getPermissao() {
		return permissao;
	}
	public void setPermissao(Permissao permissao) {
		this.permissao = permissao;
	}
	public String getNm_usuario() {
		return nm_usuario;
	}
	public void setNm_usuario(String nm_usuario) {
		this.nm_usuario = nm_usuario;
	}
	public String getSbr_usuario() {
		return sbr_usuario;
	}
	public void setSbr_usuario(String sbr_usuario) {
		this.sbr_usuario = sbr_usuario;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getCpf_usuario() {
		return cpf_usuario;
	}
	public void setCpf_usuario(int cpf_usuario) {
		this.cpf_usuario = cpf_usuario;
	}
		
	
	
}