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

@Entity
@Table(name = "teoria")
public class Teoria implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_teoria")
	private Long id;
	
	//Uma teoria ter� uma fase (Uma fase tem v�rias teorias)
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_fase")
	private Fase fase;

	public Teoria() {}
	
	public Teoria(Long id) {
		setId(id);
	}
	
	public Teoria(Fase fase) {
		setFase(fase);
	}
	
	public Teoria(Long id, Fase fase) {
		setId(id);
		setFase(fase);
	}

	public Long getId() {
		return id;
	}

	public void setId (Long id) {
		this.id = id;
	}
	public Fase getFase() {
		return fase;
	}

	public void setFase(Fase fase) {
		this.fase = fase;
	}
}