package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Sessao;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class SessaoDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Sessao sessao) {
    manager.persist(sessao);
  }
@Transactional
  public void altera(Sessao sessao) {
    manager.merge( sessao);
  }

@Transactional
  public Sessao  buscaPorId(int id) {
    return manager.find(Sessao.class, id);
  }



@Transactional
  public void remove(Sessao sessao) {
	Sessao sessaoRemove = buscaPorId(sessao.getId_sessao());
    manager.remove(sessaoRemove);
}

@Transactional
public List<Sessao > getAll() {
  List<Sessao > result = manager.createQuery("SELECT s FROM Sessao s", Sessao.class).getResultList();
  return result;
}


}

