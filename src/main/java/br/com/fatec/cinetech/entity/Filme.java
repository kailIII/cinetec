package br.com.fatec.cinetech.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Filme")
public class Filme {
		
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_filme;	
	private String nm_filme;	
	private String categ_filme;
	private int duracao;
	private int ano;
	private String dir_filme;
	private String ator1_filme;
	private String ator2_filme;
	private String sinopse_filme;
	@OneToMany(mappedBy = "filme", targetEntity = Sessao.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Sessao> sessoes;
	private String img_filme;
	
	
	
	public String getNm_filme() {
		return nm_filme;
	}
	public void setNm_filme(String nm_filme) {
		this.nm_filme = nm_filme;
	}
	public String getCateg_filme() {
		return categ_filme;
	}
	public void setCateg_filme(String categ_filme) {
		this.categ_filme = categ_filme;
	}
	public int getDuracao() {
		return duracao;
	}
	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getDir_filme() {
		return dir_filme;
	}
	public void setDir_filme(String dir_filme) {
		this.dir_filme = dir_filme;
	}
	public String getAtor1_filme() {
		return ator1_filme;
	}
	public void setAtor1_filme(String ator1_filme) {
		this.ator1_filme = ator1_filme;
	}
	public String getAtor2_filme() {
		return ator2_filme;
	}
	public void setAtor2_filme(String ator2_filme) {
		this.ator2_filme = ator2_filme;
	}
	public String getSinopse_filme() {
		return sinopse_filme;
	}
	public void setSinopse_filme(String sinopse_filme) {
		this.sinopse_filme = sinopse_filme;
	}
	public void setId_filme(int id_filme) {
		this.id_filme = id_filme;
	}
	public int getId_filme() {
		return id_filme;
	}
	public List<Sessao> getSessoes() {
		return sessoes;
	}
	public void setSessoes(List<Sessao> sessoes) {
		this.sessoes = sessoes;
	}
	public String getImg_filme() {
		return img_filme;
	}
	public void setImg_filme(String img_filme) {
		this.img_filme = img_filme;
	}
	






}
