package modelo.entidade.estudantil;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Disciplina.class)
public abstract class Disciplina_ {

	public static volatile SingularAttribute<Disciplina, Escola> escola;
	public static volatile ListAttribute<Disciplina, Turma> turmas;
	public static volatile SingularAttribute<Disciplina, String> nome;
	public static volatile SingularAttribute<Disciplina, Long> id;
	public static volatile ListAttribute<Disciplina, Professor> professores;

	public static final String ESCOLA = "escola";
	public static final String TURMAS = "turmas";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String PROFESSORES = "professores";

}

