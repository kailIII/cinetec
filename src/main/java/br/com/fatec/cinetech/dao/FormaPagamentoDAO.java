package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.FormaPagamento;


@Service
public class FormaPagamentoDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(FormaPagamento formapagamento) {
    manager.persist(formapagamento);
  }
@Transactional
  public void altera(FormaPagamento formapagamento) {
    manager.merge(formapagamento);
  }

@Transactional
  public FormaPagamento buscaPorId(int id) {
    return manager.find(FormaPagamento.class, id);
  }



@Transactional
  public void remove(FormaPagamento formapagamento ) {
	FormaPagamento formapagamentoRemove = buscaPorId(formapagamento.getId_forma());
    manager.remove(formapagamentoRemove);
}

@Transactional
public List<FormaPagamento> getAll() {
  List<FormaPagamento> result = manager.createQuery("SELECT fp FROM FormaPagamento fp", FormaPagamento.class).getResultList();
  return result;
}


}

