package modelo.entidade.estudantil;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "escola")
public class Escola extends Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	
	//Escolas tem v�rias turmas
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "escola", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Turma> turmas = new ArrayList<Turma>();
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "escola", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Disciplina> disciplinas = new ArrayList<Disciplina>();
	
	public Escola() {}
	
	public Escola(Long id) {
		super(id);
	}
	
	public Escola(String nome, String login, String senha) {
		super(nome, login, senha);
	}
	
	public Escola(Long id, String nome, Contato contato, String login, String senha) {
		super(id, nome, login, senha);
	}
	
	public Escola(Long id, String nome, String login, String senha) {
		super(id, nome, login, senha);
	}
	
	public List<Turma> getTurmas (){
		return turmas;
	}
	
	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}

	public List<Disciplina> getDisciplinas(){
		return disciplinas;
	}
	
	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
	
}