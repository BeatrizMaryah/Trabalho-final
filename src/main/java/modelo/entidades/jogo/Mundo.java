package modelo.entidades.jogo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import modelo.enumeracao.Situacao;

@Entity
@Table(name = "mundo")
public class Mundo  implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_mundo")
	private Long id;
	
	@Column(name = "nome_mundo", length = 45, nullable = false, unique = true)
	private String nome;
	
	/*	//ENUM
	@Column(name = "situacao_mundo", nullable = false, unique = false)
	@Enumerated(EnumType.STRING)
	private Situacao status;
	
	@Column(name = "media_mundo", nullable = true, unique = false)
	private float media;
	
	//Um mundo tem v�rias fases
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "mundo", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Fase> fases = new ArrayList<Fase>();
	*/
	
	//Um mundo tem um jogo
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_jogo")
	private Jogo jogo;

	public Mundo() {}
	
	public Mundo(Long id) {
		setId(id);
	}
	
	public Mundo(String nome, Situacao status, float media) { 
		setNome(nome);

	}
	
	public Mundo(Long id, String nome, Situacao status, float media) { 
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

	public void setNome(String nome) { 

		this.nome = nome;
	}
	
	public Jogo getJogo() {
		return jogo;
	}

	public void setJogo(Jogo jogo) {
		this.jogo = jogo;
	}
}