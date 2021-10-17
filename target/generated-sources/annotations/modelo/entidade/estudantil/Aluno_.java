package modelo.entidade.estudantil;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.entidades.jogo.Fase;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Aluno.class)
public abstract class Aluno_ extends modelo.entidade.estudantil.Usuario_ {

	public static volatile SingularAttribute<Aluno, String> cpf;
	public static volatile SingularAttribute<Aluno, Turma> turma;
	public static volatile ListAttribute<Aluno, Fase> fases;

	public static final String CPF = "cpf";
	public static final String TURMA = "turma";
	public static final String FASES = "fases";

}

