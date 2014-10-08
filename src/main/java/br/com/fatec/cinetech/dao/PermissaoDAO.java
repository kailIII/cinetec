package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Permissao;


@Service
public class PermissaoDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Permissao permissao) {
    manager.persist(permissao);
  }
@Transactional
  public void altera(Permissao permissao) {
    manager.merge(permissao);
  }

@Transactional
  public Permissao buscaPorId(int id) {
    return manager.find(Permissao.class, id);
  }



@Transactional
  public void remove(Permissao permissao) {
	Permissao permissaoRemove = buscaPorId(permissao.getId_permissao());
    manager.remove(permissaoRemove);
}

@Transactional
public List<Permissao> getAll() {
  List<Permissao> result = manager.createQuery("SELECT p FROM Permissao p", Permissao.class).getResultList();
  return result;
}


}

