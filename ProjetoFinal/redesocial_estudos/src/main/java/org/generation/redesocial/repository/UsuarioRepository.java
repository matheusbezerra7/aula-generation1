package org.generation.redesocial.repository;

import java.util.List;

import org.generation.redesocial.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

	
	public List<Usuario> findAllByUsuarioContainingIgnoreCase(String nome);
}
