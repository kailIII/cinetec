package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Item_Venda;
import br.com.fatec.cinetech.entity.Usuario;


@Service
public class Item_vendaDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Item_Venda itemvenda) {
    manager.persist(itemvenda);
  }
@Transactional
  public void altera(Item_Venda itemvenda) {
    manager.merge( itemvenda);
  }

@Transactional
  public Item_Venda buscaPorId(int id) {
    return manager.find(Item_Venda.class, id);
  }



@Transactional
  public void remove(Item_Venda itemvenda) {
	Item_Venda  itemvendaRemove = buscaPorId(itemvenda.getId_item_Venda());
    manager.remove(itemvendaRemove);
}

@Transactional
public List<Item_Venda > getAll() {
  List<Item_Venda > result = manager.createQuery("SELECT iv FROM Item_Venda iv", Item_Venda.class).getResultList();
  return result;
}


}

