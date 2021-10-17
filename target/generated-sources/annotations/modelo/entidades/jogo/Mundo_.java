package modelo.entidades.jogo;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Mundo.class)
public abstract class Mundo_ {

	public static volatile SingularAttribute<Mundo, String> nome;
	public static volatile SingularAttribute<Mundo, Long> id;
	public static volatile SingularAttribute<Mundo, Jogo> jogo;

	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String JOGO = "jogo";

}

