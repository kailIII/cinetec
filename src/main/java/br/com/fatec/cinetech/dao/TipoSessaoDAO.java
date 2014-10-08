package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.TipoSessao;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class TipoSessaoDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(TipoSessao tiposessao) {
    manager.persist(tiposessao);
  }
@Transactional
  public void altera(TipoSessao tiposessao) {
    manager.merge( tiposessao);
  }

@Transactional
  public TipoSessao  buscaPorId(int id) {
    return manager.find(TipoSessao.class, id);
  }



@Transactional
  public void remove(TipoSessao tiposessao) {
	TipoSessao tiposessaoRemove = buscaPorId( tiposessao.getIdTipo_sessao());
    manager.remove(tiposessaoRemove);
}

@Transactional
public List<TipoSessao> getAll() {
  List<TipoSessao> result = manager.createQuery("SELECT ts FROM TipoSessao ts", TipoSessao.class).getResultList();
  return result;
}


}

