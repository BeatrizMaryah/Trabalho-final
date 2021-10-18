package modelo.dao.professor;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import modelo.entidade.estudantil.Professor;
import modelo.entidade.estudantil.Turma;
import modelo.factory.conexao.ConexaoFactory;

public class ProfessorDAOImpl implements ProfessorDAO{
	private ConexaoFactory fabrica;

	public ProfessorDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirProfessor(Professor professor) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(professor);

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}

	public void deletarProfessor(Professor professor) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(professor);

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}

	public void atualizarProfessor(Professor professor) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(professor);

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}
	
	public Professor recuperarProfessor(Professor professor) {

		Session sessao = null;
		Professor professorRecuperado = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Professor> criteria = construtor.createQuery(Professor.class);
			Root<Professor> raizProfessor = criteria.from(Professor.class);

			criteria.select(raizProfessor);
			
			ParameterExpression<Long> idProfessor= construtor.parameter(Long.class);
			criteria.where(construtor.equal(raizProfessor.get("id"), idProfessor));

			professorRecuperado = sessao.createQuery(criteria).setParameter(idProfessor, professor.getId()).getSingleResult();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}

		return professorRecuperado;
	}

	public List<Professor> recuperarProfessores() {

		Session sessao = null;
		List<Professor> professores = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Professor> criteria = construtor.createQuery(Professor.class);
			Root<Professor> raizProfessor = criteria.from(Professor.class);

			criteria.select(raizProfessor);

			professores = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}

		return professores;
	}
	

	public List<Professor> recuperarProfessoresTurma(Turma turma) {
		
		Session sessao = null;
		List<Professor> professores = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Professor> criteria = construtor.createQuery(Professor.class);
			Root<Professor> raizProfessor = criteria.from(Professor.class);
			
			Join<Professor, Turma> juncaoTurma = raizProfessor.join("turmas");
			
			ParameterExpression<Long> idTurma = construtor.parameter(Long.class);
			criteria.where(construtor.equal(juncaoTurma.get("id"), idTurma));

			professores = sessao.createQuery(criteria).setParameter(idTurma, turma.getId()).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}

		return professores;
	}
}
