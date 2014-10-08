package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Poltrona;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class PoltronaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Poltrona poltrona) {
    manager.persist(poltrona);
  }
@Transactional
  public void altera(Poltrona poltrona) {
    manager.merge(poltrona);
  }

@Transactional
  public Poltrona buscaPorId(int id) {
    return manager.find(Poltrona.class, id);
  }



@Transactional
  public void remove(Poltrona poltrona) {
	Poltrona poltronaRemove = buscaPorId(poltrona.getId_poltrona());
    manager.remove(poltronaRemove);
}

@Transactional
public List<Poltrona> getAll() {
  List<Poltrona> result = manager.createQuery("SELECT p FROM Poltrona p", Poltrona.class).getResultList();
  return result;
}


}

