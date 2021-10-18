package modelo.entidade.estudantil;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "professor")
public class Professor extends Usuario implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	//Um professor tem v�rias turmas.
	@ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name = "professor_turma", joinColumns = @JoinColumn(name = "id_professor"), inverseJoinColumns = @JoinColumn(name = "id_turma"))
	private List<Turma> turmas = new ArrayList<Turma>();

	public Professor() {}
	
	public Professor(Long id) {
		super(id);
	}
	
	public Professor(String nome, String login, String senha){ //throws NomeInvalidoException, CpfInvalidoException, SenhaInvalidaException, LoginInvalidoException
		super(nome, login, senha);
	}
	
	public Professor(Long id, String nome, String login, String senha){ //throws NomeInvalidoException, CpfInvalidoException, SenhaInvalidaException, LoginInvalidoException
		super(id, nome, login, senha);
	}
	
	public List<Turma> getTurmas(){
		return turmas;
	}
	
	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}

}
