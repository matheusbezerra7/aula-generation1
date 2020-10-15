package org.generation.redesocial.controller;

import java.util.List;

import org.generation.redesocial.model.Tema;
import org.generation.redesocial.repository.TemaRepository;
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
@RequestMapping("/tema")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class TemaController {
	
	@Autowired
	private TemaRepository repository;
	
	/*Buscar todos temas*/
	@GetMapping
	public ResponseEntity<List<Tema>> getAll(){
		return ResponseEntity.ok(repository.findAll());
		
	}
	
	/*Buscar por ID*/
	@GetMapping("/{id}")
	public ResponseEntity<Tema> getById(@PathVariable long id){
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}
	
	/*Buscar utilizando palavra chave informada pelo usuario (Like do SQL) */
	@GetMapping("/tema/{tema}")
	public ResponseEntity<List<Tema>> getByTema(@PathVariable String tema){
		return ResponseEntity.ok(repository.findAllByTemaContainingIgnoreCase(tema));
	}
	

	/*Buscar por estado*/
	@GetMapping("/estado/{estado}")
	public ResponseEntity<Object> getByEstado(@PathVariable String estado){
		return ResponseEntity.ok(repository.findAllByEstadoContainingIgnoreCase(estado));
		}

	
	/*Criar novo tema*/
	@PostMapping
	public ResponseEntity<Tema> post (@RequestBody Tema tema){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(tema));
	}
	
	/*Atualizar Tema*/
	@PutMapping
	public ResponseEntity<Tema> put (@RequestBody Tema tema){
		return ResponseEntity.ok(repository.save(tema));
	}
	
	/*Deletar um dado da tb_tema*/
	@DeleteMapping
	public void delete (@PathVariable long id) {
		repository.deleteById(id);
	}

	
	
}
