package modelo.entidades.jogo;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.entidade.estudantil.Aluno;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Fase.class)
public abstract class Fase_ {

	public static volatile ListAttribute<Fase, Aluno> alunos;
	public static volatile SingularAttribute<Fase, String> nome;
	public static volatile SingularAttribute<Fase, Long> id;
	public static volatile SingularAttribute<Fase, Integer> nota;

	public static final String ALUNOS = "alunos";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String NOTA = "nota";

}

