package br.com.fatec.cinetech.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.cinetech.entity.Usuario;


@Service
public class UsuarioDAO {


@PersistenceContext
private EntityManager manager;


@Transactional
  public void adiciona(Usuario usuario) {
    manager.persist(usuario);
  }
@Transactional
  public void altera(Usuario usuario) {
    manager.merge(usuario);
  }

@Transactional
  public Usuario buscaPorId(int id) {
    return manager.find(Usuario.class, id);
  }

@Transactional
public Usuario buscaPorCpf(int cpf) {
  return manager.find(Usuario.class, cpf);
}


@Transactional
  public void remove(Usuario usuario) {
	  Usuario usuarioRemove = buscaPorId(usuario.getId_usuario());
    manager.remove(usuarioRemove);
}

@Transactional
public List<Usuario> getAll() {
  List<Usuario> result = manager.createQuery("SELECT u FROM Usuario u", Usuario.class).getResultList();
  return result;
}


}

