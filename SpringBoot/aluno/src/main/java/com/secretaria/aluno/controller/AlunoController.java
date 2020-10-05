package com.secretaria.aluno.controller;

import java.util.List;

import org.apache.catalina.connector.Response;
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

import com.secretaria.aluno.model.Aluno;
import com.secretaria.aluno.repository.AlunoRepository;


@RestController
@RequestMapping("/alunos")
@CrossOrigin("*")
public class AlunoController {
	
	@Autowired
	private AlunoRepository repositoty;
	
	@GetMapping
	public ResponseEntity<List<Aluno>> GetAll(){
		return ResponseEntity.ok(repositoty.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Aluno> GetById(@PathVariable long id){
		return repositoty.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}
	
	
	@PostMapping
	public ResponseEntity<Aluno> post (@RequestBody Aluno aluno){
		return ResponseEntity.status(HttpStatus.CREATED).body(repositoty.save(aluno));
	}
	
	
	
	@PutMapping
	public ResponseEntity<Aluno> put (@RequestBody Aluno aluno){
		return ResponseEntity.status(HttpStatus.OK).body(repositoty.save(aluno));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repositoty.deleteById(id);
	}

}
