package org.generation.redesocial.controller;

import java.util.List;

import org.generation.redesocial.model.Postagem;
import org.generation.redesocial.repository.PostagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/postagens")
@CrossOrigin("*")
public class PostagemController {

	@Autowired
	private PostagemRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Postagem>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}
	
	
	/*Passar pela url um id para buscar uma postagem especifica*/
	@GetMapping("/{id}")
	public ResponseEntity<Postagem> GetById(@PathVariable long id){
		
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
		}
	
	/*Metodo post para criar novo dado na tabela*/
	@PostMapping
	public ResponseEntity<Postagem> post (@RequestBody Postagem postagem){
			return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(postagem));
	}
	
	/*Atulizar dado*/
	@PutMapping
	public ResponseEntity<Postagem> put (@RequestBody Postagem postagem){
			return ResponseEntity.status(HttpStatus.OK).body(repository.save(postagem));
	}
	
	/*deletar dado pelo id*/
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}

	/*metodo que busca pelo nome da postagem , utilizando meio de pesquisa com palavras "Chaves"*/
	@GetMapping("/postagem/{postagem}")
	public ResponseEntity<List<Postagem>> GetByPostagem (@PathVariable String postagem){
		return ResponseEntity.ok(repository.findAllByPostagemContainingIgnoreCase(postagem));
		
	}
	
	
	
}
