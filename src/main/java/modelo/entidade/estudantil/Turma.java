package modelo.entidade.estudantil;

import java.io.Serializable;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "turma")
public class Turma implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_turma")
	private Long id;
	
	@Column(name = "nome_turma", length = 30, nullable = false, unique = false)
	private String nome;
	
	//Uma escola tem muitas turmas.
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_escola")
	private Escola escola;
	
	//Uma turma tem muitos alunos.
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "turma", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	private List<Aluno> alunos = new ArrayList<Aluno>();
	
	//Uma turma tem v�rias disciplinas.
	@ManyToMany(mappedBy = "turmas", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	private List<Disciplina> disciplinas = new ArrayList<Disciplina>();

	public Turma() {}
	
	public Turma(Long id) {
		setId(id);
	}

	public Turma(String nome, Escola escola)  {
		setNome(nome);
		setEscola(escola);
	}

	public Turma(Long id, String nome, Escola escola)  {
		setId(id);
		setNome(nome);
		setEscola(escola);
	}
	
	public Turma(String nome)  {
		setNome(nome);
	}
	
	public Turma(Long id, String nome)  {
		setId(id);
		setNome(nome);
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {

		return nome;
	}

	public void setNome(String nome)  {
		this.nome = nome;
	}

	public Escola getEscola() {

		return escola;
	}

	public void setEscola(Escola escola) {

		this.escola = escola;
	}

	public List<Aluno> getAlunos() {

		return alunos;
	}

	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}
}