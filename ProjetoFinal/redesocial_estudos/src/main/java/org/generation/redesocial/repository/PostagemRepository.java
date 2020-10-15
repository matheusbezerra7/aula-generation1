package org.generation.redesocial.repository;

import java.util.List;

import org.generation.redesocial.model.Postagem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostagemRepository extends JpaRepository <Postagem , Long> {
	/*Busca todas postagem que tem esse titulo e ignora caps lock da variavel titulo */

	public List<Postagem> findAllByPostagemContainingIgnoreCase (String postagem) ;
}
