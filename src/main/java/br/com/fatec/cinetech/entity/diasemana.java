package br.com.fatec.cinetech.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class diasemana {

		@Id
		@GeneratedValue
		private int id_dia_Semana;
		private String nm_dia_semana;
		public int getId_dia_Semana() {
			return id_dia_Semana;
		}
		public void setId_dia_Semana(int id_dia_Semana) {
			this.id_dia_Semana = id_dia_Semana;
		}
		public String getNm_dia_semana() {
			return nm_dia_semana;
		}
		public void setNm_dia_semana(String nm_dia_semana) {
			this.nm_dia_semana = nm_dia_semana;
		}
		
}
