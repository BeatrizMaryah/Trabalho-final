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
import javax.servlet.http.HttpSession;

import modelo.dao.aluno.AlunoDAO;
import modelo.dao.aluno.AlunoDAOImpl;
import modelo.dao.contato.ContatoDAO;
import modelo.dao.contato.ContatoDAOImpl;
import modelo.dao.disciplina.DisciplinaDAO;
import modelo.dao.disciplina.DisciplinaDAOImpl;
import modelo.dao.endereco.EnderecoDAO;
import modelo.dao.endereco.EnderecoDAOImpl;
import modelo.dao.escola.EscolaDAO;
import modelo.dao.escola.EscolaDAOImpl;
import modelo.dao.professor.ProfessorDAO;
import modelo.dao.professor.ProfessorDAOImpl;
import modelo.dao.turma.TurmaDAO;
import modelo.dao.turma.TurmaDAOImpl;
import modelo.dao.usuario.UsuarioDAO;
import modelo.dao.usuario.UsuarioDAOImpl;
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
	private DisciplinaDAO daoDisciplina;
	private UsuarioDAO daoUsuario;

	public void init() {
		daoContato = new ContatoDAOImpl();
		daoEndereco = new EnderecoDAOImpl();
		daoAluno = new AlunoDAOImpl();
		daoEscola = new EscolaDAOImpl();
		daoProfessor = new ProfessorDAOImpl();
		daoTurma = new TurmaDAOImpl();
		daoDisciplina = new DisciplinaDAOImpl();
		daoUsuario = new UsuarioDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		
		String action = request.getServletPath();

		try {

			switch (action) {

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
			// =========Disciplina=============
				
				
			case "/nova-disciplina":
				mostrarFormularioNovaDisciplina(request, response);
				break;

			case "/inserir-disciplina":
				inserirDisciplina(request, response);
				break;

			case "/deletar-disciplina":
				deletarDisciplina(request, response);
				break;

			case "/atualizar-disciplina":
				atualizarDisciplina(request, response);
				break;

			case "/listar-disciplinas":
				listarDisciplinas(request, response);
				break;
				
			// =========Teoria=============
				
			case "/teoria-system":
				mostrarTelaTeoriaSystem(request, response);
				break;
				
			case "/teoria-scanner":
				mostrarTelaTeoriaScanner(request, response);
				break;
				
			case "/teoria-variaveis":
				mostrarTelaTeoriaVariaveis(request, response);
				break;
				
			case "/teoria-boolean":
				mostrarTelaTeoriaBoolean(request, response);
				break;
				
			case "/teoria-for":
				mostrarTelaTeoriaFor(request, response);
				break;
				
			case "/teoria-relacionais":
				mostrarTelaTeoriaRelacionais(request, response);
				break;
				
			case "/teoria-logicos":
				mostrarTelaTeoriaLogicos(request, response);
				break;
				
			case "/teoria-switch-case":
				mostrarTelaTeoriaSwitchCase(request, response);
				break;
				
			case "/teoria-if":
				mostrarTelaTeoriaIf(request, response);
				break;
				
			case "/teoria-while":
				mostrarTelaTeoriaWhile(request, response);
				break;
				
			// =========Quiz=============
				
			case "/quiz-system":
				mostrarTelaQuizSystem(request, response);
				break;
				
			case "/quiz-scanner":
				mostrarTelaQuizScanner(request, response);
				break;
			
			case "/quiz-variaveis":
				mostrarTelaQuizVariaveis(request, response);
				break; 
				
			case "/quiz-boolean":
				mostrarTelaQuizBoolean(request, response);
				break; 
				
			case "/quiz-for":
				mostrarTelaQuizFor(request, response);
				break; 
				
			case "/quiz-relacionais":
				mostrarTelaQuizRelacionais(request, response);
				break; 
				
			case "/quiz-logicos":
				mostrarTelaQuizLogicos(request, response);
				break; 
				
			case "/quiz-switch-case":
				mostrarTelaQuizSwitchCase(request, response);
				break; 
				
			case "/quiz-if":
				mostrarTelaQuizIf(request, response);
				break; 
				
			case "/quiz-while":
				mostrarTelaQuizWhile(request, response);
				break; 
			
			// =========Escolha nas listas=============
				
			case "/escolher-turma-alunos":
				listarAlunosDaTurma(request, response);
				break;
				
			case "/escolher-escola-turmas":
				listarTurmasDaEscola(request, response);
				break;
				
			case "/escolher-escola-professores":
				listarProfessoresDaEscola(request, response);
				break;
				
			// =========Padrão=============
				
			case "/inicio":
				voltarIndex(request, response);
				break;
				
			case "/inicio-escola":
				mostrarTelaPrincipalEscola(request, response);
				break;
				
			case "/fases":
				mostrarTelaFases(request, response);
				break;

			case "/login":
				mostrarTelaLogin(request, response);
				break;
				
//			case "/logar":
//				logar(request, response, sessao);
//				break;

	//		case "/deslogar":
//				deslogar(request, response);
//				break;
		}	

		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	// ======================================Padrao===============================================

	private void voltarIndex(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaFases(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("fases.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaPrincipalEscola(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("tela-principal-escola.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarTelaLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}
	
//	private void logar(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
//			throws IOException {

//		String login = request.getParameter("login");
//		String senha = request.getParameter("senha");
//		Usuario user = new Usuario();;
//		user.setLogin(login);
//		Usuario usuario = daoUsuario.recuperarUsuario(user); // Recupera um obj ou pf ou pj

//		if (usuario instanceof Escola && senha.equals(usuario.getSenha())) {
//			System.out.println("Nome 1: " + (usuario).getNome());
//			System.out.println("É uma Escola");
//			sessao.setAttribute("usuario", usuario);
//		} else if (usuario instanceof Professor && senha.equals(usuario.getSenha())) {
//			System.out.println("É um Professor!");
//			sessao.setAttribute("usuario", usuario);
//		} else if (usuario instanceof Aluno && senha.equals(usuario.getSenha())) {
//			System.out.println("É um Aluno!");
//			sessao.setAttribute("usuario", usuario);
//		} else
//			System.out.println("Senha incorreta :(");
//
//		if ((Usuario) sessao.getAttribute("usuario") == null)
//			response.sendRedirect("login");
//		else {
//			System.out.println(sessao.getAttribute("usuario"));
//			response.sendRedirect("inicio");
//		}
//	}
	
	// ======================================Escolhas nas listas============================================
	
	private void listarAlunosDaTurma(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		List<Turma> turmas = daoTurma.recuperarTurmas();
		request.setAttribute("turmas", turmas);
		
		List<Aluno> alunos = daoAluno.recuperarAlunosTurma(turma);
		request.setAttribute("alunos", alunos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listarTurmasDaEscola(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Long idEscola = Long.parseLong(request.getParameter("id-escola"));
		Escola escola = daoEscola.recuperarEscola(new Escola(idEscola));
		
		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-turmas.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listarProfessoresDaEscola(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Long idEscola = Long.parseLong(request.getParameter("id-escola"));
		Escola escola = daoEscola.recuperarEscola(new Escola(idEscola));
		
		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		List<Professor> professores = daoProfessor.recuperarProfessoresEscola(escola);
		request.setAttribute("professores", professores);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-professores.jsp");
		dispatcher.forward(request, response);
	}
	
	
	// ======================================Teoria===============================================
	
	private void mostrarTelaTeoriaSystem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-system.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaScanner(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-scanner.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaVariaveis(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-variaveis.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaBoolean(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-boolean.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaFor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-for.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaRelacionais(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-relacionais.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaLogicos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-logicos.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaSwitchCase(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-switch-case.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaIf(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-if.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaTeoriaWhile(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-while.jsp");
		dispatcher.forward(request, response);
	}
	// ======================================Quiz===============================================
	
	private void mostrarTelaQuizSystem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-system.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizScanner(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-scanner.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizVariaveis(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-variaveis.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizBoolean(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-boolean.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizFor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-for.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizRelacionais(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-relacionais.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizLogicos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-logicos.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizSwitchCase(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-switch-case.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizIf(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-if.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaQuizWhile(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-while.jsp");
		dispatcher.forward(request, response);
	}
	//======================================Aluno===============================================

	private void listarAlunos(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Turma> turmas = daoTurma.recuperarTurmas();
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoAluno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Turma> turmas = daoTurma.recuperarTurmas();
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-aluno.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		
		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		String telefone = request.getParameter("telefone");
		
		Aluno aluno = new Aluno(nome, login, senha, cpf);
		daoAluno.inserirAluno(aluno);
		
		Contato contato = new Contato(email, celular, telefone, aluno);
		daoContato.inserirContato(contato);
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		aluno.setTurma(turma);
		
		daoAluno.atualizarAluno(aluno);
		daoTurma.atualizarTurma(turma);
		
		response.sendRedirect("inicio-escola");
	}

	private void atualizarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		daoAluno.atualizarAluno(new Aluno(id, nome, login, senha, cpf));
		response.sendRedirect("listar-alunos"); // Terá botão na lista de alunos para excluir.
	}

	private void deletarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Aluno aluno = daoAluno.recuperarAluno(new Aluno(id));
		daoAluno.deletarAluno(aluno);
		response.sendRedirect("listar-alunos"); // Terá botão na lista de alunos para deletar.
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
			throws SQLException, IOException, ServletException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		String telefone = request.getParameter("telefone");

		String nomeEndereco = request.getParameter("nome");
		String complemento = request.getParameter("complemento");
		short numero = Short.parseShort((request.getParameter("numero")));
		String cidade = request.getParameter("cidade");
		int cep = Integer.parseInt((request.getParameter("cep")));
		
		Escola escola = new Escola(nome, login, senha);
		daoEscola.inserirEscola(escola);
		
		Contato contato = new Contato(email, celular, telefone, escola);
		daoContato.inserirContato(contato);
		
		
		Endereco endereco = new Endereco(nomeEndereco, complemento, numero, cidade, cep, escola);
		daoEndereco.inserirEndereco(endereco);
		
		daoEscola.atualizarEscola(escola);
		
		response.sendRedirect("inicio-escola");
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
		//response.sendRedirect("listar"); 
	}
	// ======================================Professor===============================================

	private void listarProfessores(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-professores.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoProfessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Disciplina> disciplinas = daoDisciplina.recuperarDisciplinas();
		request.setAttribute("disciplinas", disciplinas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-professor.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirProfessor(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		String email = request.getParameter("email");
		int celular = Integer.parseInt(request.getParameter("celular"));
		String telefone = request.getParameter("telefone");

		Professor professor = new Professor(nome, login, senha);
		daoProfessor.inserirProfessor(professor);
		
		Contato contato = new Contato(email, celular, telefone, professor);
		daoContato.inserirContato(contato);
		
		Long idDisciplina = Long.parseLong(request.getParameter("id-disciplina"));
		Disciplina disciplina = daoDisciplina.recuperarDisciplina(new Disciplina(idDisciplina));
		
		professor.setDisciplina(disciplina);
		
		daoProfessor.atualizarProfessor(professor);
		daoContato.atualizarContato(contato);
		
		response.sendRedirect("inicio-escola");
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

		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-turmas.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovaTurma(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-turma.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		Long idEscola = Long.parseLong(request.getParameter("id-escola"));
		Escola escola = daoEscola.recuperarEscola(new Escola(idEscola));
		
		Turma turma = new Turma(nome, escola);
		
		daoTurma.inserirTurma(turma);
		daoEscola.atualizarEscola(escola);
		response.sendRedirect("listar-turmas");
	}

	private void atualizarTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		daoTurma.atualizarTurma(new Turma(id, nome));
		response.sendRedirect("listar-turmas");
	}

	private void deletarTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Turma turma = daoTurma.recuperarTurma(new Turma(id));
		daoTurma.deletarTurma(turma);
		response.sendRedirect("listar-turmas");
	}
	
	// ======================================Disciplinas===============================================
	
	private void listarDisciplinas(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		List<Disciplina> disciplinas = daoDisciplina.recuperarDisciplinas();
		request.setAttribute("disciplinas", disciplinas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-disciplinas.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovaDisciplina(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Escola> escolas = daoEscola.recuperarEscolas();
		request.setAttribute("escolas", escolas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-disciplina.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirDisciplina(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		Long idEscola = Long.parseLong(request.getParameter("id-escola"));
		Escola escola = daoEscola.recuperarEscola(new Escola(idEscola));
		
		Disciplina disciplina = new Disciplina(nome, escola);
		daoDisciplina.inserirDisciplina(disciplina);
		response.sendRedirect("inicio-escola");
	}

	private void atualizarDisciplina(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		daoDisciplina.atualizarDisciplina(new Disciplina(id, nome));
		response.sendRedirect("inicio-escola");
	}

	private void deletarDisciplina(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Disciplina disciplina = daoDisciplina.recuperarDisciplina(new Disciplina(id));
		daoDisciplina.deletarDisciplina(disciplina);
		response.sendRedirect("listar-turmas");
	}
}
