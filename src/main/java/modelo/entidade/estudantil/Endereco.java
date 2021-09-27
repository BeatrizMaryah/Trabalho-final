package modelo.entidade.estudantil;

import java.io.Serializable;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "endereco", uniqueConstraints = {@UniqueConstraint(columnNames = {"nome_endereco", "numero_endereco" }) })
public class Endereco implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_endereco")
	private Long id;

	@Column(name = "nome_endereco", length = 50, nullable = false, unique = false)
	private String nome;

	@Column(name = "complemento_endereco", length = 45, nullable = true, unique = false)
	private String complemento;

	@Column(name = "numero_endereco", nullable = false, unique = false)
	private short numero;

	@Column(name = "cidade_endereco", length = 25, nullable = false, unique = false)
	private String cidade;
	
	@Column(name = "cep_endereco", nullable = false, unique = true)
	private int cep;

	@OneToOne(fetch = FetchType.LAZY)
	@MapsId
	@JoinColumn(name = "id_escola")
	private Escola escola;

	public Endereco() {}
	
	public Endereco(Long id) {
		setId(id);
	}

	public Endereco(String nome, String complemento, short numero, String cidade, int cep) { //throws NumeroInvalidoException, CidadeInvalidaException
		setNome(nome);
		setComplemento(complemento);
		setNumero(numero);
		setCidade(cidade);
		setCep(cep);
	}

	public Endereco(Long id, String nome, String complemento, short numero, String cidade, int cep) { //throws NumeroInvalidoException, CidadeInvalidaException
		setId(id);
		setNome(nome);
		setComplemento(complemento);
		setNumero(numero);
		setCidade(cidade);
		setCep(cep);
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

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {

		this.complemento = complemento;
	}

	public short getNumero() {
		return numero;
	}

	public void setNumero(short numero) { //throws NumeroInvalidoException 

		//if (numero < 0)
		//	throw new NumeroInvalidoException("N�o pode ser negativo!");

		this.numero = numero;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) { // throws CidadeInvalidaException 

		 //for (char c : cidade.toCharArray()) {
		 //if (!Character.isLetter(c) && !Character.isSpaceChar(c))
		 //	 throw new CidadeInvalidaException("Tem que ser letras!");
		 //}
	
		this.cidade = cidade;
	}

	public Escola getEscola() {
		return escola;
	}

	public void setEscola(Escola escola) {
		this.escola = escola;
	}
	
	public int getCep() {
		return cep;
	}
	
	public void setCep(int cep) {
		this.cep = cep;
	}

}
