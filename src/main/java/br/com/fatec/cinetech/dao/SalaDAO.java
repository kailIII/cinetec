package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Sala;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class SalaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Sala sala) {
    manager.persist( sala);
  }
@Transactional
  public void altera(Sala sala) {
    manager.merge(sala);
  }

@Transactional
  public Sala  buscaPorId(int id) {
    return manager.find(Sala.class, id);
  }



@Transactional
  public void remove(Sala sala) {
	Sala salaRemove = buscaPorId(sala.getId_sala());
    manager.remove(salaRemove);
}

@Transactional
public List<Sala> getAll() {
  List<Sala> result = manager.createQuery("SELECT s FROM Sala s", Sala.class).getResultList();
  return result;
}


}

