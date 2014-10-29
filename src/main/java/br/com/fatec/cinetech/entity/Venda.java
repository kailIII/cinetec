package br.com.fatec.cinetech.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "Venda")
public class Venda {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_venda;
	@ManyToOne
	@JoinColumn(name = "id_forma" )
	private FormaPagamento formapagamento;
	@ManyToOne
	@JoinColumn(name = "id_usuario" )
	private Usuario usuario;
	private Date dt_venda;
	private double vl_total_venda;
	
	
	public int getId_venda() {
		return id_venda;
	}
	public void setId_venda(int id_venda) {
		this.id_venda = id_venda;
	}
	public FormaPagamento getFormapagamento() {
		return formapagamento;
	}
	public void setFormapagamento(FormaPagamento formapagamento) {
		this.formapagamento = formapagamento;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public Date getDt_venda() {
		return dt_venda;
	}
	public void setDt_venda(Date dt_venda) {
		this.dt_venda = dt_venda;
	}
	public double getVl_total_venda() {
		return vl_total_venda;
	}
	public void setVl_total_venda(double vl_total_venda) {
		this.vl_total_venda = vl_total_venda;
	}
	

}
