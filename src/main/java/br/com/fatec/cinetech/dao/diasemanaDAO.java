package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Usuario;
import br.com.fatec.cinetech.entity.diasemana;


@Service
public class diasemanaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(diasemana diasemana) {
    manager.persist(diasemana);
  }
@Transactional
  public void altera(diasemana diasemana){
    manager.merge(diasemana);
  }

@Transactional
  public diasemana buscaPorId(int id) {
    return manager.find(diasemana.class, id);
  }



@Transactional
  public void remove(diasemana diasemana) {
	diasemana diasemanaRemove = buscaPorId(diasemana.getId_dia_Semana());
    manager.remove(diasemanaRemove);
}

@Transactional
public List<diasemana> getAll() {
  List<diasemana> result = manager.createQuery("SELECT ds FROM diasemana ds", diasemana.class).getResultList();
  return result;
}


}

