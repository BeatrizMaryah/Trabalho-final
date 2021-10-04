package modelo.dao.opcao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import modelo.entidades.jogo.Atividade;
import modelo.entidades.jogo.Jogo;
import modelo.entidades.jogo.Mundo;
import modelo.entidades.jogo.Opcao;
import modelo.factory.conexao.ConexaoFactory;

public class OpcaoDAOImpl implements OpcaoDAO {

	private ConexaoFactory fabrica;

	public OpcaoDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	
	public void inserirOpcao(Opcao opcao) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(opcao);

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

	public void deletarOpcao(Opcao opcao) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(opcao);

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

	public void atualizarOpcao(Opcao opcao) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(opcao);

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
	
	public List<Opcao> recuperarOpcoes() {

		Session sessao = null;
		List<Opcao> opcoes = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Opcao> criteria = construtor.createQuery(Opcao.class);
			Root<Opcao> raizOpcao = criteria.from(Opcao.class);

			criteria.select(raizOpcao);

			opcoes = sessao.createQuery(criteria).getResultList();

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

		return opcoes;
	}
	
	public List<Opcao> recuperarOpcoesAtividades(Atividade atividade) {

		Session sessao = null;
		List<Opcao> opcoes = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Opcao> criteria = construtor.createQuery(Opcao.class);
			Root<Opcao> raizOpcao = criteria.from(Opcao.class);

			Join<Opcao, Atividade> juncaoAtividade = raizOpcao.join("atividade");

			ParameterExpression<Long> idAtividade = construtor.parameter(Long.class);
			criteria.where(construtor.equal(juncaoAtividade.get("id"), idAtividade));

			opcoes = sessao.createQuery(criteria).setParameter(idAtividade, atividade.getId()).getResultList();

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

		return opcoes;
	}
}