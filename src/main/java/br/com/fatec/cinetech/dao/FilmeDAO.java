package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Filme;


@Service
public class FilmeDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Filme filme) {
    manager.persist(filme);
  }
@Transactional
  public void altera(Filme filme) {
    manager.merge(filme);
  }

@Transactional
  public Filme buscaPorId(int id) {
    return manager.find(Filme.class, id);
  }

@Transactional
public Filme buscaPorNome(String nome) {
	String  consulta="SELECT f.nm_filme FROM Filme f";
	Query query = manager.createQuery(consulta);
	Filme filme = (Filme) query.getParameter(nome);
  return filme;
}


@Transactional
  public void remove(Filme filme) {
	Filme filmeremovido = buscaPorId(filme.getId_filme());
    manager.remove(filmeremovido);
}

@Transactional
public List<Filme> getAll() {
  List<Filme> result = manager.createQuery("SELECT f FROM Filme f", Filme.class).getResultList();
  return result;
}




}