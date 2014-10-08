package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.SessaoDia;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class SessaoDiaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(SessaoDia sessaodia) {
    manager.persist(sessaodia);
  }
@Transactional
  public void altera(SessaoDia sessaodia) {
    manager.merge(sessaodia);
  }

@Transactional
  public SessaoDia buscaPorId(int id) {
    return manager.find(SessaoDia.class, id);
  }



@Transactional
  public void remove(SessaoDia sessaodia) {
	SessaoDia sessaodiaRemove = buscaPorId(sessaodia.getId_sessao_dia());
    manager.remove(sessaodiaRemove);
}

@Transactional
public List<SessaoDia> getAll() {
  List<SessaoDia> result = manager.createQuery("SELECT sd FROM SessaoDia sd", SessaoDia.class).getResultList();
  return result;
}


}

