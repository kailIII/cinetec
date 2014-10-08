package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "FormaPagamento")
public class FormaPagamento {

	
		@Id
		@GeneratedValue
		private int id_forma;
		private String nm_forma;
		
		
		public int getId_forma() {
			return id_forma;
		}
		public void setId_forma(int id_forma) {
			this.id_forma = id_forma;
		}
		public String getNm_forma() {
			return nm_forma;
		}
		public void setNm_forma(String nm_forma) {
			this.nm_forma = nm_forma;
		}
}
