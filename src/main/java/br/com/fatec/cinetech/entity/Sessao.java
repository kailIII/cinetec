package br.com.fatec.cinetech.entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;


@Entity
@Table(name = "Sessao")
public class Sessao {
	
		

		@GeneratedValue
		@Id
		private int id_sessao;
		@ManyToOne
		@JoinColumn(name = "id_poltrona")
		private Poltrona poltrona;
		@ManyToOne
		@JoinColumn(name = "id_sala")
		private Sala sala;
		@ManyToOne
		@JoinColumn(name = "id_filme")
		private Filme filme;
		@ManyToOne
		@JoinColumn(name = "id_tipo_sessao")
		private TipoSessao tiposessao;
		
		private Date hor_sessao;
		private Date dt_final_sessao;
		public int getId_sessao() {
			return id_sessao;
		}
		public void setId_sessao(int id_sessao) {
			this.id_sessao = id_sessao;
		}
		public Poltrona getPoltrona() {
			return poltrona;
		}
		public void setPoltrona(Poltrona poltrona) {
			this.poltrona = poltrona;
		}
		public Sala getSala() {
			return sala;
		}
		public void setSala(Sala sala) {
			this.sala = sala;
		}
		public Filme getFilme() {
			return filme;
		}
		public void setFilme(Filme filme) {
			this.filme = filme;
		}
		public TipoSessao getTiposessao() {
			return tiposessao;
		}
		public void setTiposessao(TipoSessao tiposessao) {
			this.tiposessao = tiposessao;
		}
		public Date getHor_sessao() {
			return hor_sessao;
		}
		public void setHor_sessao(Date hor_sessao) {
			this.hor_sessao = hor_sessao;
		}
		public Date getDt_final_sessao() {
			return dt_final_sessao;
		}
		public void setDt_final_sessao(Date dt_final_sessao) {
			this.dt_final_sessao = dt_final_sessao;
		}
		
		
		
		
		
		
		
		
		
}
