package br.com.fatec.cinetech.entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Sessao")
public class Sessao {
	
		

		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id_sessao;
		@ManyToOne
		@JoinColumn(name="id_salaPoltrona")
		 private SalaPoltrona salaPoltrona;
		@ManyToOne(cascade = CascadeType.ALL)
		@JoinColumn(name = "id_filme")
		private Filme filme;
		@ManyToOne
		@JoinColumn(name = "id_tipo_sessao")
		private TipoSessao tiposessao;
		
		@OneToMany(mappedBy = "sessao", targetEntity = SessaoDia.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
		private List<SessaoDia> sessoesdia;
		
		private Date hor_sessao;
		private Date dt_final_sessao;
		public int getId_sessao() {
			return id_sessao;
		}
		public void setId_sessao(int id_sessao) {
			this.id_sessao = id_sessao;
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
		public SalaPoltrona getSalaPoltrona() {
			return salaPoltrona;
		}
		public void setSalaPoltrona(SalaPoltrona salaPoltrona) {
			this.salaPoltrona = salaPoltrona;
		}
		public List<SessaoDia> getSessoesdia() {
			return sessoesdia;
		}
		public void setSessoesdia(List<SessaoDia> sessoesdia) {
			this.sessoesdia = sessoesdia;
		}
		
		
		
		
		
		
		
		
		
}
