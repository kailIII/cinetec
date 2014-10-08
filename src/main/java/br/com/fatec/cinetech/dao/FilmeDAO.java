package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
  public void remove(Filme filme) {
	Filme filmeRemove = buscaPorId(filme.getId_filme());
    manager.remove(filmeRemove);
}

@Transactional
public List<Filme> getAll() {
  List<Filme> result = manager.createQuery("SELECT f FROM Filme f", Filme.class).getResultList();
  return result;
}


}

