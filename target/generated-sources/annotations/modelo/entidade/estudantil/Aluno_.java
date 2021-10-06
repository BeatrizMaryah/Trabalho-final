package modelo.entidade.estudantil;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Aluno.class)
public abstract class Aluno_ extends modelo.entidade.estudantil.Usuario_ {

	public static volatile SingularAttribute<Aluno, String> cpf;
	public static volatile SingularAttribute<Aluno, Turma> turma;

	public static final String CPF = "cpf";
	public static final String TURMA = "turma";

}

