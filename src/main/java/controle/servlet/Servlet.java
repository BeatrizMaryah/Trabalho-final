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
import modelo.dao.endereco.EnderecoDAO;
import modelo.dao.endereco.EnderecoDAOImpl;
import modelo.dao.escola.EscolaDAO;
import modelo.dao.escola.EscolaDAOImpl;
import modelo.dao.fase.FaseDAO;
import modelo.dao.fase.FaseDAOImpl;
import modelo.dao.professor.ProfessorDAO;
import modelo.dao.professor.ProfessorDAOImpl;
import modelo.dao.turma.TurmaDAO;
import modelo.dao.turma.TurmaDAOImpl;
import modelo.dao.usuario.UsuarioDAO;
import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.estudantil.Aluno;
import modelo.entidade.estudantil.Contato;
import modelo.entidade.estudantil.Endereco;
import modelo.entidade.estudantil.Escola;
import modelo.entidade.estudantil.Professor;
import modelo.entidade.estudantil.Turma;
import modelo.entidade.estudantil.Usuario;
import modelo.entidades.jogo.Fase;

@WebServlet("/")
public class Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private ContatoDAO daoContato;
	private EnderecoDAO daoEndereco;
	private AlunoDAO daoAluno;
	private EscolaDAO daoEscola;
	private ProfessorDAO daoProfessor;
	private TurmaDAO daoTurma;
	private UsuarioDAO daoUsuario;
	private FaseDAO daoFase;

	public void init() {
		daoContato = new ContatoDAOImpl();
		daoEndereco = new EnderecoDAOImpl();
		daoAluno = new AlunoDAOImpl();
		daoEscola = new EscolaDAOImpl();
		daoProfessor = new ProfessorDAOImpl();
		daoTurma = new TurmaDAOImpl();
		daoUsuario = new UsuarioDAOImpl();
		daoFase = new FaseDAOImpl();
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
				mostrarFormularioNovoAluno(request, response, sessao);
				break;

			case "/inserir-aluno":
				inserirAluno(request, response, sessao);
				break;

			case "/deletar-aluno":
				deletarAluno(request, response);
				break;
				
			case "/atualizar-aluno":
				atualizarAluno(request, response);
				break;

			case "/listar-alunos":
				listarAlunos(request, response, sessao);
				break;
					
			case "/escolher-turma-alunos":
				listarAlunosDaTurma(request, response, sessao);
				break;

			// =========Escola=============

			case "/nova-escola":
				mostrarFormularioNovaEscola(request, response);
				break;

			case "/inserir-escola":
				inserirEscola(request, response, sessao);
				break;

			case "/atualizar-escola":
				atualizarEscola(request, response);
				break;

			case "/listar-escolas":
				listarEscolas(request, response);
				break;

			// =========Professor=============

			case "/novo-professor":
				mostrarFormularioNovoProfessor(request, response, sessao);
				break;

			case "/inserir-professor":
				inserirProfessor(request, response, sessao);
				break;

			case "/deletar-professor":
				deletarProfessor(request, response);
				break;

			case "/atualizar-professor":
				atualizarProfessor(request, response);
				break;

			case "/listar-professores":
				listarProfessores(request, response, sessao);
				break;
				
			case "/escolher-turma-professores":
				listarProfessoresDaTurma(request, response, sessao);
				break;
			
			case "/listar-alunos-professor":
				telaProfessorListarAlunos(request, response, sessao);
				break;
			
			case "/escolher-turma-alunos-professor":
				telaProfessorListarAlunosDaTurma(request, response, sessao);
				break;
				
			case "/mostrar-fases-aluno":
				telaProfessorMostrarFasesAluno(request, response, sessao);
				break;
			
				
			// =========Turma=============

			case "/nova-turma":
				mostrarFormularioNovaTurma(request, response, sessao);
				break;

			case "/inserir-turma":
				inserirTurma(request, response, sessao);
				break;

			case "/deletar-turma":
				deletarTurma(request, response);
				break;

			case "/listar-turmas":
				listarTurmas(request, response, sessao);
				break;
				
			// =========Teoria=============
				
			case "/teoria-system":
				mostrarTelaTeoriaSystem(request, response, sessao);
				break;
				
			case "/teoria-variaveis":
				mostrarTelaTeoriaVariaveis(request, response, sessao);
				break;
				
			case "/teoria-scanner":
				mostrarTelaTeoriaScanner(request, response, sessao);
				break;
				
			case "/teoria-boolean":
				mostrarTelaTeoriaBoolean(request, response, sessao);
				break;
				
			case "/teoria-relacionais":
				mostrarTelaTeoriaRelacionais(request, response, sessao);
				break;
				
			case "/teoria-if":
				mostrarTelaTeoriaIf(request, response, sessao);
				break;

			case "/teoria-switch-case":
				mostrarTelaTeoriaSwitchCase(request, response, sessao);
				break;
				
			case "/teoria-logicos":
				mostrarTelaTeoriaLogicos(request, response, sessao);
				break;
				
			case "/teoria-while":
				mostrarTelaTeoriaWhile(request, response, sessao);
				break;
				
			case "/teoria-for":
				mostrarTelaTeoriaFor(request, response, sessao);
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
				
			case "/boolean":
				mostrarBoolean(request, response);
				break; 
	
			// =========Padrão=============
				
			case "/inicio":
				voltarIndex(request, response, sessao);
				break;
				
			case "/fases":
				mostrarTelaFases(request, response);
				break;

			case "/login":
				mostrarTelaLogin(request, response, sessao);
				break;
				
			case "/logar":
				logar(request, response, sessao);
				break;

			case "/deslogar":
				deslogar(request, response);
				break;
				
			case "/salvar-nota":
				salvarNota(request, response, sessao);
				break;
				
			case "/mostrar-notas-aluno":
				mostrarTelaNotasDoAluno(request, response, sessao);
				break;
		}	

		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	// ======================================Padrao===============================================

	private void voltarIndex(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarTelaFases(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("fases.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarTelaLogin(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {

		if (sessao.getAttribute("usuario") != null) {
			response.sendRedirect(request.getRequestURI());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void logar(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws IOException {

		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		Usuario user = new Usuario();
		user.setLogin(login);
		Usuario usuario = daoUsuario.recuperarUsuario(user); 

		if (usuario instanceof Escola && senha.equals(usuario.getSenha())) {
			System.out.println("É uma Escola"); //Debugar
			sessao.setAttribute("usuario", usuario);
			
			if ((Usuario) sessao.getAttribute("usuario") == null)
				response.sendRedirect("login");
			else {
				System.out.println(sessao.getAttribute("usuario"));
				response.sendRedirect("listar-turmas");
			}
			
		} else 	if (usuario instanceof Professor && senha.equals(usuario.getSenha())) {
			System.out.println("É um Professor"); //Debugar
			sessao.setAttribute("usuario", usuario);
			
			if ((Usuario) sessao.getAttribute("usuario") == null)
				response.sendRedirect("login");
			else {
				System.out.println(sessao.getAttribute("usuario"));
				response.sendRedirect("listar-alunos-professor");
			}
			
		} else if (usuario instanceof Aluno && senha.equals(usuario.getSenha())) {
			System.out.println("É um Aluno!"); //Debugar
			sessao.setAttribute("usuario", usuario);
			
			if ((Usuario) sessao.getAttribute("usuario") == null)
				response.sendRedirect("login");
			else {
				System.out.println(sessao.getAttribute("usuario"));
				response.sendRedirect("fases");
			}
			
		} else
			System.out.println("Senha incorreta :(");
	}
	
	private void deslogar(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().invalidate();
		response.sendRedirect("inicio");
	}
	
	private void salvarNota(HttpServletRequest request, HttpServletResponse response, HttpSession sessao) throws IOException {
		
		Fase fase = (Fase) sessao.getAttribute("fase");
		
		Integer nota = Integer.parseInt(request.getParameter("nota"));
		
		fase.setNota(nota);

		daoFase.atualizarFase(fase);
		
		sessao.removeAttribute("fase");
		response.sendRedirect("fases");
	}
	
	private void mostrarTelaNotasDoAluno(HttpServletRequest request, HttpServletResponse response, HttpSession sessao) throws IOException, ServletException {
		
		Aluno aluno = (Aluno) sessao.getAttribute("usuario");
		
		List<Fase> fases = daoFase.recuperarFasesAluno(aluno);
		request.setAttribute("fases", fases);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("notas-aluno.jsp");
		dispatcher.forward(request, response);
	}
	
	//======================================Aluno===============================================

	private void listarAlunos(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException, ServletException {
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos.jsp");
		dispatcher.forward(request, response);
	}

	private void listarAlunosDaTurma(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		List<Aluno> alunos = daoAluno.recuperarAlunosTurma(turma);
		request.setAttribute("alunos", alunos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovoAluno(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-aluno.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirAluno(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		
		Aluno aluno = new Aluno(nome, login, senha, cpf);
		daoAluno.inserirAluno(aluno);
		
		Contato contato = new Contato(email, telefone, aluno);
		daoContato.inserirContato(contato);
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		aluno.setTurma(turma);
		
		daoAluno.atualizarAluno(aluno);
		daoTurma.atualizarTurma(turma);
		
		response.sendRedirect("listar-alunos");
	}

	private void atualizarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		Long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		daoAluno.atualizarAluno(new Aluno(id, nome, login, senha, cpf));
		response.sendRedirect("listar-alunos"); 
	}

	private void deletarAluno(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Aluno aluno = daoAluno.recuperarAluno(new Aluno(id));
		daoAluno.deletarAluno(aluno);
		response.sendRedirect("listar-alunos"); 
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
	
	private void inserirEscola(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException, ServletException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");

		String nomeEndereco = request.getParameter("nome");
		String complemento = request.getParameter("complemento");
		short numero = Short.parseShort((request.getParameter("numero")));
		String cidade = request.getParameter("cidade");
		int cep = Integer.parseInt((request.getParameter("cep")));
		
		Escola escola = new Escola(nome, login, senha);
		daoEscola.inserirEscola(escola);
		
		Contato contato = new Contato(email, telefone, escola);
		daoContato.inserirContato(contato);
		
		Endereco endereco = new Endereco(nomeEndereco, complemento, numero, cidade, cep, escola);
		daoEndereco.inserirEndereco(endereco);
		
		daoEscola.atualizarEscola(escola);
		
		response.sendRedirect("login");
	}

	private void atualizarEscola(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		daoEscola.atualizarEscola(new Escola(id, nome, login, senha));
		response.sendRedirect("listar-turmas");
	}
	
	// ======================================Professor===============================================

	private void listarProfessores(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException, ServletException {
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-professores.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listarProfessoresDaTurma(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		List<Professor> professores = daoProfessor.recuperarProfessoresTurma(turma);
		request.setAttribute("professores", professores);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-professores.jsp");
		dispatcher.forward(request, response);
	}
	

	private void mostrarFormularioNovoProfessor(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas1 = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas1", turmas1);
		
		List<Turma> turmas2 = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas2", turmas2);
		
		List<Turma> turmas3 = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas3", turmas3);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-professor.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirProfessor(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");

		long id1 = Long.parseLong(request.getParameter("id-turma-1"));
		Turma turma1 = daoTurma.recuperarTurma(new Turma(id1));
		
		long id2 = Long.parseLong(request.getParameter("id-turma-2"));
		Turma turma2 = daoTurma.recuperarTurma(new Turma(id2));
		
		long id3 = Long.parseLong(request.getParameter("id-turma-3"));
		Turma turma3 = daoTurma.recuperarTurma(new Turma(id3));
		
		Professor professor = new Professor(nome, login, senha);
		daoProfessor.inserirProfessor(professor);
		
		Contato contato = new Contato(email, telefone, professor);
		daoContato.inserirContato(contato);
		
		List<Turma> turmasAluno1 = daoTurma.recuperarTurmasProfessor(professor);
		List<Professor> professoresTurma1 = daoProfessor.recuperarProfessoresTurma(turma1);
		
		professor.setTurmas(turmasAluno1);
		turma1.setProfessor(professoresTurma1);
		
		professor.getTurmas().add(turma1);
		turma1.getProfessores().add(professor);
		
		daoTurma.atualizarTurma(turma1);
		daoProfessor.atualizarProfessor(professor);
		
		List<Turma> turmasAluno2 = daoTurma.recuperarTurmasProfessor(professor);
		List<Professor> professoresTurma2 = daoProfessor.recuperarProfessoresTurma(turma2);
		
		professor.setTurmas(turmasAluno2);
		turma2.setProfessor(professoresTurma2);
		
		professor.getTurmas().add(turma2);
		turma2.getProfessores().add(professor);
		
		daoTurma.atualizarTurma(turma2);
		daoProfessor.atualizarProfessor(professor);
		
		List<Turma> turmasAluno3 = daoTurma.recuperarTurmasProfessor(professor);
		List<Professor> professoresTurma3 = daoProfessor.recuperarProfessoresTurma(turma3);
		
		professor.setTurmas(turmasAluno3);
		turma3.setProfessor(professoresTurma3);
		
		professor.getTurmas().add(turma3);
		turma3.getProfessores().add(professor);

		daoTurma.atualizarTurma(turma3);
		daoProfessor.atualizarProfessor(professor);
		
		daoContato.atualizarContato(contato);
		response.sendRedirect("listar-professores");
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
	
	private void telaProfessorListarAlunos(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException, ServletException {
		
		Professor professor = (Professor) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasProfessor(professor);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos-professor.jsp");
		dispatcher.forward(request, response);
	}
	
	private void telaProfessorListarAlunosDaTurma(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Long idTurma = Long.parseLong(request.getParameter("id-turma"));
		Turma turma = daoTurma.recuperarTurma(new Turma(idTurma));
		
		Professor professor = (Professor) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasProfessor(professor);
		request.setAttribute("turmas", turmas);
		
		List<Aluno> alunos = daoAluno.recuperarAlunosTurma(turma);
		request.setAttribute("alunos", alunos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-alunos-professor.jsp");
		dispatcher.forward(request, response);
	}
	
	private void telaProfessorMostrarFasesAluno(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		Long idAluno = Long.parseLong(request.getParameter("id"));
		Aluno aluno = daoAluno.recuperarAluno(new Aluno(idAluno));
		request.setAttribute("aluno", aluno);
		
		List<Fase> fases = daoFase.recuperarFasesAluno(aluno);
		request.setAttribute("fases", fases);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("professor-mostrar-fases-aluno.jsp");
		dispatcher.forward(request, response);
	}

	// ======================================Turma===============================================

	private void listarTurmas(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException, ServletException {

		Escola escola = (Escola) sessao.getAttribute("usuario");
		
		List<Turma> turmas = daoTurma.recuperarTurmasEscola(escola);
		request.setAttribute("turmas", turmas);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar-turmas.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioNovaTurma(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro-turma.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirTurma(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
			throws SQLException, IOException {

		String nome = request.getParameter("nome");
		Escola escola = (Escola) sessao.getAttribute("usuario");

		Turma turma = new Turma(nome, escola);

		daoTurma.inserirTurma(turma);
		daoEscola.atualizarEscola(escola);
		response.sendRedirect("listar-turmas");
	}

	private void deletarTurma(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		long id = Long.parseLong(request.getParameter("id"));
		Turma turma = daoTurma.recuperarTurma(new Turma(id));
		daoTurma.deletarTurma(turma);
		response.sendRedirect("listar-turmas");
	}
	
	// ======================================Teoria===============================================
	
		private void mostrarTelaTeoriaSystem(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("System", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 1"); //Debugar

			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-system.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaVariaveis(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Variáveis", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 2"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-variaveis.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaScanner(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Scanner", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 3"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-scanner.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaBoolean(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Boolean", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 4"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-boolean.jsp");
			dispatcher.forward(request, response);
		}

		
		private void mostrarTelaTeoriaRelacionais(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Operadores Relacionais", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 5"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-relacionais.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaIf(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("If e Else", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 6"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-if.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaSwitchCase(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Switch Case", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 7"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-switch-case.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaLogicos(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("Operadores Lógicos", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 8"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-logicos.jsp");
			dispatcher.forward(request, response);
		}
		
		private void mostrarTelaTeoriaWhile(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("While", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 9"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-while.jsp");
			dispatcher.forward(request, response);
		}

		private void mostrarTelaTeoriaFor(HttpServletRequest request, HttpServletResponse response, HttpSession sessao)
				throws ServletException, IOException {
			
			byte ordem = Byte.parseByte(request.getParameter("id"));
			Fase fase = new Fase("For", ordem);

			Aluno aluno = (Aluno) sessao.getAttribute("usuario");

			List<Fase> fasesAluno = daoFase.recuperarFasesAluno(aluno);
			List<Aluno> alunosFase = daoAluno.recuperarAlunosFase(fase);
			
			aluno.setFases(fasesAluno);
			fase.setAlunos(alunosFase);

			aluno.getFases().add(fase);
			fase.getAlunos().add(aluno);

			daoFase.inserirFase(fase);
			daoAluno.atualizarAluno(aluno);

			sessao.setAttribute("fase", fase);
			System.out.println("fase 10"); //Debugar
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("teoria-for.jsp");
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
		
		private void mostrarBoolean(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("boolean.jsp");
			dispatcher.forward(request, response);
		}
}