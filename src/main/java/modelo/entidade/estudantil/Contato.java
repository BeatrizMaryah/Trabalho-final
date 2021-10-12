package modelo.entidade.estudantil;

import java.io.Serializable;

import javax.persistence.CascadeType;
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

@Entity
@Table(name = "contato")
public class Contato implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_contato")
	private Long id;
	
	@Column(name = "email_contato", length = 45, nullable = false, unique = true)
	private String email;
	
	@Column(name = "celular_contato", nullable = true, unique = false)
	private int celular;
	
	@Column(name = "telefone_contato", nullable = true, unique = false)
	private String telefone;
	
	@OneToOne(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@MapsId
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;

	public Contato() {}
	
	public Contato(Long id) {
		setId(id);
	}
	public Contato(String email, int celular, String telefone, Usuario usuario) {
		setEmail(email);
		setCelular(celular);
		setTelefone(telefone);
		setUsuario(usuario);
	}
	
	public Contato(Long id, String email, int celular, String telefone, Usuario usuario) {
		setId(id);
		setEmail(email);
		setCelular(celular);
		setTelefone(telefone);
		setUsuario(usuario);
	}
	
	public Contato(String email, int celular, String telefone) {
		setEmail(email);
		setCelular(celular);
		setTelefone(telefone);
	}
	
	public Contato(Long id, String email, int celular, String telefone) {
		setId(id);
		setEmail(email);
		setCelular(celular);
		setTelefone(telefone);
	}

	public Contato(String email, int celular) {
		setEmail(email);
		setCelular(celular);
	}

	public Contato(String email) {
		setEmail(email);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email)  {

		this.email = email;
	}

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {

		this.telefone = telefone;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}