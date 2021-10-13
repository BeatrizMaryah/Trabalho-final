package modelo.entidade.estudantil;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import modelo.entidades.jogo.Fase;

@Entity
@Table(name = "aluno")
public class Aluno extends Usuario implements Serializable  {

	private static final long serialVersionUID = 1L;

	@Column(name = "cpf_pessoa", length = 14, nullable = false, unique = true)
	private String cpf;
	
	//Um aluno tem uma turma
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_turma")
	private Turma turma;

	@ManyToMany(mappedBy = "alunos", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	private List<Fase> fases = new ArrayList<Fase>();

	public Aluno() {}

	public Aluno(Long id) {
		super(id);
	}
	
	public Aluno(String nome, String login, String senha, String cpf, Turma turma) {
		super(nome, login, senha);
		setCpf(cpf);
		setTurma(turma);
	}
	
	public Aluno(Long id, String nome, String login, String senha, String cpf, Contato contato, Turma turma) {
		super(id, nome, login, senha, contato);
		setCpf(cpf);
		setTurma(turma);
	}

	public Aluno(Long id, String nome, String login, String senha, String cpf) {
		super(id, nome, login, senha);
		setCpf(cpf);
	}
	
	public Aluno(String nome, String login, String senha, String cpf) {
		super(nome, login, senha);
		setCpf(cpf);
	}
	
	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}
	
	public String getCpf () {
		return cpf;
	}
	
	public void setCpf (String cpf) { 
		this.cpf = cpf;
	}
}