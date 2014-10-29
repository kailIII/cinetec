package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Item_Venda {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_item_Venda;
	@ManyToOne
	@JoinColumn(name = "id_venda" )
	private Venda venda;
	@ManyToOne
	@JoinColumn(name = "id_sessao_dia" )
	private SessaoDia sessaoDia;
	private int qtd_item;
	private int tipo_item;
	private double vl_item;
	
	
	public int getId_item_Venda() {
		return id_item_Venda;
	}
	public void setId_item_Venda(int id_item_Venda) {
		this.id_item_Venda = id_item_Venda;
	}
	public Venda getVenda() {
		return venda;
	}
	public void setVenda(Venda venda) {
		this.venda = venda;
	}
	
	public int getQtd_item() {
		return qtd_item;
	}
	public void setQtd_item(int qtd_item) {
		this.qtd_item = qtd_item;
	}
	public int getTipo_item() {
		return tipo_item;
	}
	public void setTipo_item(int tipo_item) {
		this.tipo_item = tipo_item;
	}
	public double getVl_item() {
		return vl_item;
	}
	public void setVl_item(double vl_item) {
		this.vl_item = vl_item;
	}
	public SessaoDia getSessaoDia() {
		return sessaoDia;
	}
	public void setSessaoDia(SessaoDia sessaoDia) {
		this.sessaoDia = sessaoDia;
	}
	
	
}
