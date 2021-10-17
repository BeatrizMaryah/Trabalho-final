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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "disciplina")
public class Disciplina implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_disciplina")
	private Long id;
	
	@Column(name = "nome_disciplina", length = 45, nullable = false, unique = true)
	private String nome;
	
	//Uma disciplina tem v�rios professores
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "disciplina", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Professor> professores = new ArrayList<Professor>();
	
	//Uma disciplina tem v�rias turmas.
	@ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name = "disciplina_turma", joinColumns = @JoinColumn(name = "id_disciplina"), inverseJoinColumns = @JoinColumn(name = "id_turma"))
	private List<Turma> turmas = new ArrayList<Turma>();
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_escola")
	private Escola escola;

	public Disciplina() {}
	
	public Disciplina(Long id) {
		setId(id);
	}
	
	public Disciplina(Long id, String nome) {
		setId(id);
		setNome(nome);
	}
	
	public Disciplina(String nome) {
		setNome(nome);
	}
	
	public Disciplina(String nome, Escola escola)  {
		setNome(nome);
		setEscola(escola);
		
	}
	
	public Disciplina(Long id, String nome, Escola escola)  {
		setId(id);
		setNome(nome);
		setEscola(escola);
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

	public void setNome(String nome) { 

		this.nome = nome;
	}

	public List<Turma> getTurmas() {
		return turmas;
	}
	
	public List<Professor> getProfessor () {
		return professores;
	}
	
	public Escola getEscola() {
		return escola;
	}
	
	public void setEscola(Escola escola) {
		this.escola = escola;
	}
}