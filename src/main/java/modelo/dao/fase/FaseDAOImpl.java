package modelo.dao.fase;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import modelo.entidade.estudantil.Aluno;
import modelo.entidades.jogo.Fase;
import modelo.factory.conexao.ConexaoFactory;

public class FaseDAOImpl implements FaseDAO {

	private ConexaoFactory fabrica;

	public FaseDAOImpl() {
		fabrica = new ConexaoFactory();
	}
	
	public void inserirFase(Fase fase) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(fase);

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

	public void deletarFase(Fase fase) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(fase);

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

	public void atualizarFase(Fase fase) {


		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(fase);

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
	
	public Fase recuperarFase(Fase fase) {

		Session sessao = null;
		Fase faseRecuperada = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Fase> criteria = construtor.createQuery(Fase.class);
			Root<Fase> raizFase= criteria.from(Fase.class);

			criteria.select(raizFase);
			
			ParameterExpression<Long> idFase= construtor.parameter(Long.class);
			criteria.where(construtor.equal(raizFase.get("id"), idFase));

			faseRecuperada = sessao.createQuery(criteria).setParameter(idFase, fase.getId()).getSingleResult();

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

		return faseRecuperada;
	}
	
	public List<Fase> recuperarFases() {

		Session sessao = null;
		List<Fase> fases = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Fase> criteria = construtor.createQuery(Fase.class);
			Root<Fase> raizFase = criteria.from(Fase.class);

			criteria.select(raizFase);

			fases = sessao.createQuery(criteria).getResultList();

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

		return fases;
	}
	
	public List<Fase> recuperarFasesAluno(Aluno aluno) {

		Session sessao = null;
		List<Fase> fases = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Fase> criteria = construtor.createQuery(Fase.class);
			Root<Fase> raizFase = criteria.from(Fase.class);

			Join<Fase, Aluno> juncaoAluno = raizFase.join("alunos");

			ParameterExpression<Long> idAluno = construtor.parameter(Long.class);
			criteria.where(construtor.equal(juncaoAluno.get("id"), idAluno));

			fases = sessao.createQuery(criteria).setParameter(idAluno, aluno.getId()).getResultList();

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

		return fases;
	}
}