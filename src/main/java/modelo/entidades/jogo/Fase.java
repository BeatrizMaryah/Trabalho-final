package modelo.entidades.jogo;

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
import javax.persistence.Table;

import modelo.entidade.estudantil.Aluno;

@Entity
@Table(name = "fase")
public class Fase implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_fase")
	private Long id;

	@Column(name = "nome_fase", length = 20, nullable = false, unique = false)
	private String nome;
	
	@Column(name = "nota_fase", nullable = true, unique = false)
	private Integer nota;
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name = "aluno_fase", joinColumns = @JoinColumn(name = "id_fase"), inverseJoinColumns = @JoinColumn(name = "id_aluno"))
	private List<Aluno> alunos = new ArrayList<Aluno>();
	
	@Column(name = "ordem_fase", nullable = false, unique = false)
	private byte ordem;
/*
	@Column(name = "situacao_fase", nullable = false, unique = false)
	@Enumerated(EnumType.STRING)
	private Situacao status;

	Uma fase tem um mundo (Um mundo tem muitas fases)
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_mundo")
	private Mundo mundo;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "fase", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Atividade> atividades = new ArrayList<Atividade>();

	Uma fase tem muitas teorias
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "fase", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Teoria> teorias = new ArrayList<Teoria>();
*/
	public Fase() {}

	public Fase(Long id) {
		setId(id);
	}

	public Fase(String nome, byte ordem) {
		setNome(nome);
		setOrdem(ordem);
	}

	public Fase(Long id, String nome, byte ordem) { 
		setId(id);
		setNome(nome);
		setOrdem(ordem);
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

	public Integer getNota() {
		return nota;
	}

	public void setNota(Integer nota) {
		this.nota = nota;
	}
	
	public List<Aluno> getAlunos(){
		return alunos;
	}
	
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

	public byte getOrdem() {
		return ordem;
	}

	public void setOrdem(byte ordem) {
		this.ordem = ordem;
	}
}