package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import br.com.fatec.cinetech.entity.SalaPoltrona;


@Service
public class SalaPoltronaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(SalaPoltrona salapoltrona) {
    manager.persist(salapoltrona);
  }
@Transactional
  public void altera(SalaPoltrona salapoltrona) {
    manager.merge( salapoltrona);
  }

@Transactional
  public SalaPoltrona   buscaPorId(int id) {
    return manager.find(SalaPoltrona.class, id);
  }



@Transactional
  public void remove(SalaPoltrona salapoltrona) {
	SalaPoltrona  salaRemove = buscaPorId(salapoltrona.getId_salaPoltrona());
    manager.remove(salaRemove);
}

@Transactional
public List<SalaPoltrona> getAll() {
  List<SalaPoltrona> result = manager.createQuery("SELECT s FROM SalaPoltrona s", SalaPoltrona.class).getResultList();
  return result;
}


}

