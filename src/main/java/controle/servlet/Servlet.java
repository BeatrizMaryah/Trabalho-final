package controle.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.aluno.AlunoDAO;
import modelo.dao.aluno.AlunoDAOImpl;
import modelo.dao.contato.ContatoDAO;
import modelo.dao.contato.ContatoDAOImpl;
import modelo.dao.endereco.EnderecoDAO;
import modelo.dao.endereco.EnderecoDAOImpl;
import modelo.dao.escola.EscolaDAO;
import modelo.dao.escola.EscolaDAOImpl;
import modelo.dao.professor.ProfessorDAO;
import modelo.dao.professor.ProfessorDAOImpl;
import modelo.dao.turma.TurmaDAO;
import modelo.dao.turma.TurmaDAOImpl;
import modelo.entidade.estudantil.Aluno;
import modelo.entidade.estudantil.Contato;
import modelo.entidade.estudantil.Disciplina;
import modelo.entidade.estudantil.Endereco;
import modelo.entidade.estudantil.Escola;
import modelo.entidade.estudantil.Professor;
import modelo.entidade.estudantil.Turma;
import modelo.entidade.estudantil.Usuario;

@WebServlet("/")
public class Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private ContatoDAO daoContato;
	private EnderecoDAO daoEndereco;
	private AlunoDAO daoAluno;
	private EscolaDAO daoEscola;
	private ProfessorDAO daoProfessor;
	private TurmaDAO daoTurma;

	public void init() {
		daoContato = new ContatoDAOImpl();
		daoEndereco = new EnderecoDAOImpl();
		daoAluno = new AlunoDAOImpl();
		daoEscola = new EscolaDAOImpl();
		daoProfessor = new ProfessorDAOImpl();
		daoTurma = new TurmaDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		try {

			switch (action) {

			// =========Contato=============

			case "/novo-contato-escola":
				mostrarFormularioNovoContatoEscola(request, response);
				break;
			case "/novo-contato-aluno":
				mostrarFormularioNovoContatoAluno(request, response);
				break;
			case "/novo-contato-professor":
				mostrarFormularioNovoContatoProfessor(request, response);
				break;

			case "/inserir-contato-escola":
				inserirContatoEscola(request, response);
				break;

			case "/inserir-contato-aluno":
				inserirContatoAluno(request, response);
				break;

			case "/inserir-contato-professor":
				inserirContatoProfessor(request, response);
				break;

			case "/deletar-contato":
				deletarContato(request, response);
				break;

			case "/atualizar-contato":
				atualizarContato(request, response);
				break;

			case "/listar-contatos":
				listarContatos(request, response);
				break;

			// =========Endereço=============

			case "/novo-endereco":
				mostrarFormularioNovoEndereco(request, response);
				break;

			case "/inserir-endereco":
				inserirEndereco(request, response);
				break;

			case "/deletar-endereco":
				deletarEndereco(request, response);
				break;

			case "/atualizar-endereco":
				atualizarEndereco(request, response);
				break;

			case "/listar-enderecos":
				listarEnderecos(request, response);
				break;

			// =========Aluno=============

			case "/novo-aluno":
				mostrarFormularioNovoAluno(request, response);
				break;

			case "/inserir-aluno":
				inserirAluno(request, response);
				break;

			case "/deletar-aluno":
				deletarAluno(request, response);
				break;

			case "/atualizar-aluno":
				atualizarAluno(request, response);
				break;

			case "/listar-alunos":
				listarAlunos(request, response);
				break;

			// =========Escola=============

			case "/nova-escola":
				mostrarFormularioNovaEscola(request, response);
				break;

			case "/inserir-escola":
				inserirEscola(request, response);
				break;

			case "/deletar-escola":
				deletarEscola(request, response);
				break;

			case "/atualizar-escola":
				atualizarEscola(request, response);
				break;

			case "/listar-escolas":
				listarEscolas(request, response);
				break;

			// =========Professor=============

			case "/novo-professor":
				mostrarFormularioNovoProfessor(request, response);
				break;

			case "/inserir-professor":
				inserirProfessor(request, response);
				break;

			case "/deletar-professor":
				deletarProfessor(request, response);
				break;

			case "/atualizar-professor":
				atualizarProfessor(request, response);
				break;

			case "/listar-professores":
				listarProfessores(request, response);
				break;

			// =========Turma=============

			case "/nova-turma":
				mostrarFormularioNovaTurma(request, response);
				break;

			case "/inserir-turma":
				inserirTurma(request, response);
				break;

			case "/deletar-turma":
				deletarTurma(request, response);
				break;

			case "/atualizar-turma":
				atualizarTurma(request, response);
				break;

			case "/listar-turmas":
				listarTurmas(request, response);
				break;

			}

		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	// ======================================Contato===============================================

	private void listarContatos(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Contato> contatos = daoContato.recuperarContatos();
		request.setAttribute("contatos", contatos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-contato.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoContatoEscola(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("contato-escola.jsp");
		dispatcher.forward(request, response);

	}

	private void mostrarFormularioNovoContatoAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("contato-aluno.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoContatoProfessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("contato-professor.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirContatoEscola(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		int telefone = Integer.parseInt(request.getParameter("telefone"));
		Contato contato = new Contato(email, celular, telefone);
		Usuario usuario = (Usuario) request.getAttribute("escola");
		contato.setUsuario(usuario);
		daoContato.inserirContato(contato);
		response.sendRedirect("novo-endereco");
	}

	private void inserirContatoAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		int telefone = Integer.parseInt(request.getParameter("telefone"));
		Contato contato = new Contato(email, celular, telefone);
		Usuario usuario = (Usuario) request.getAttribute("aluno");
		contato.setUsuario(usuario);
		daoContato.inserirContato(contato);
		response.sendRedirect("tela-jogo");
	}

	private void inserirContatoProfessor(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		int telefone = Integer.parseInt(request.getParameter("telefone"));
		Contato contato = new Contato(email, celular, telefone);
		Usuario usuario = (Usuario) request.getAttribute("professor");
		contato.setUsuario(usuario);
		daoContato.inserirContato(contato);
		//response.sendRedirect("");
	}

	private void atualizarContato(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		int telefone = Integer.parseInt(request.getParameter("telefone"));
		daoContato.atualizarContato(new Contato(id, email, celular, telefone));
		response.sendRedirect("listar");
	}

	private void deletarContato(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = daoContato.recuperarContato(new Contato(id));
		daoContato.deletarContato(contato);
		response.sendRedirect("listar");
	}

	// ======================================Endereço===============================================

	private void listarEnderecos(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Endereco> enderecos = daoEndereco.recuperarEnderecos();
		request.setAttribute("enderecos", enderecos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-enderecos.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoEndereco(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("endereco-escola.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirEndereco(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String complemento = request.getParameter("complemento");
		short numero = Short.parseShort((request.getParameter("numero")));
		String cidade = request.getParameter("cidade");
		int cep = Integer.parseInt((request.getParameter("cep")));
		Endereco endereco = new Endereco(nome, complemento, numero, cidade, cep);
		Escola escola = (Escola) request.getAttribute("escola");
		endereco.setEscola(escola);
		daoEndereco.inserirEndereco(endereco);
		response.sendRedirect("");
	}

	private void atualizarEndereco(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String complemento = request.getParameter("complemento");
		short numero = Short.parseShort((request.getParameter("numero")));
		String cidade = request.getParameter("cidade");
		int cep = Integer.parseInt((request.getParameter("cep")));
		daoEndereco.atualizarEndereco(new Endereco(id, nome, complemento, numero, cidade, cep));
		response.sendRedirect("listar"); // Volta pra tela de cadastro do endereco para editar
	}

	private void deletarEndereco(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Endereco endereco = daoEndereco.recuperarEndereco(new Endereco(id));
		daoEndereco.deletarEndereco(endereco);
		response.sendRedirect("listar"); // deleta quando a escola é deletada
	}

	// ======================================Aluno===============================================

	private void listarAlunos(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Aluno> alunos = daoAluno.recuperarAlunos();
		request.setAttribute("alunos", alunos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-aluno.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		Aluno aluno = new Aluno(nome, login, senha, cpf);
		Turma turma = (Turma) request.getAttribute("turma");
		aluno.setTurma(turma);
		daoAluno.inserirAluno(aluno);
		request.setAttribute("aluno", aluno);
		response.sendRedirect("novo-contato-aluno");
	}

	private void atualizarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		daoAluno.atualizarAluno(new Aluno(id, nome, login, senha, cpf));
		response.sendRedirect("listar"); // Terá botão na lista de alunos para excluir.
	}

	private void deletarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Aluno aluno = daoAluno.recuperarAluno(new Aluno(id));
		daoAluno.deletarAluno(aluno);
		response.sendRedirect("listar"); // Terá botão na lista de alunos para deletar.
	}

	// ======================================Escola===============================================

	private void listarEscolas(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-escolas.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovaEscola(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-escola.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirEscola(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		Escola escola = new Escola(nome, login, senha);
		daoEscola.inserirEscola(escola);
		request.setAttribute("escola", escola);
		response.sendRedirect("novo-contato-escola"); // Após cadastrar escola entra para cadastro do contato da escola
	}

	private void atualizarEscola(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		daoEscola.atualizarEscola(new Escola(id, nome, login, senha));
		response.sendRedirect("listar"); // volta para o "cadastro" para editar
	}

	private void deletarEscola(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Escola escola = daoEscola.recuperarEscola(new Escola(id));
		daoEscola.deletarEscola(escola);
		response.sendRedirect("listar"); // botao exclusivo para deletar escola, talvez no perfil.
	}

	// ======================================Professor===============================================

	private void listarProfessores(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Professor> professores = daoProfessor.recuperarProfessores();
		request.setAttribute("professores", professores);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-professores.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoProfessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-professor.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirProfessor(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		Professor professor = new Professor(nome, login, senha);
		Disciplina disciplina = (Disciplina) request.getAttribute("disciplina");
		professor.setDisciplina(disciplina);
		daoProfessor.inserirProfessor(professor);
		request.setAttribute("professor", professor);
		response.sendRedirect("novo-contato-professor");
	}

	private void atualizarProfessor(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		daoProfessor.atualizarProfessor(new Professor(id, nome, login, senha));
		response.sendRedirect("listar");
	}

	private void deletarProfessor(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Professor professor = daoProfessor.recuperarProfessor(new Professor(id));
		daoProfessor.deletarProfessor(professor);
		response.sendRedirect("listar");
	}

	// ======================================Turma===============================================

	private void listarTurmas(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Turma> turmas = daoTurma.recuperarTurmas();
		request.setAttribute("turmas", turmas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-turmas.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovaTurma(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-turma.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		daoTurma.inserirTurma(new Turma(nome));
		response.sendRedirect("listar");
	}

	private void atualizarTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		daoTurma.atualizarTurma(new Turma(id, nome));
		response.sendRedirect("listar");
	}

	private void deletarTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Turma turma = daoTurma.recuperarTurma(new Turma(id));
		daoTurma.deletarTurma(turma);
		response.sendRedirect("listar");
	}
}
