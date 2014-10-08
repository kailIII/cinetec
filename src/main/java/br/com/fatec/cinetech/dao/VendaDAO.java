package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Venda;


@Service
public class VendaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Venda venda) {
    manager.persist( venda);
  }
@Transactional
  public void altera(Venda venda) {
    manager.merge(venda);
  }

@Transactional
  public Venda  buscaPorId(int id) {
    return manager.find(Venda.class, id);
  }



@Transactional
  public void remove(Venda venda) {
	Venda vendaRemove = buscaPorId( venda.getId_venda());
    manager.remove(vendaRemove);
}

@Transactional
public List<Venda> getAll() {
  List<Venda> result = manager.createQuery("SELECT v FROM Venda v", Venda.class).getResultList();
  return result;
}


}

