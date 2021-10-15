package modelo.dao.fase;

import java.util.List;

import modelo.entidade.estudantil.Aluno;
import modelo.entidades.jogo.Fase;
import modelo.entidades.jogo.Mundo;

public interface FaseDAO {
	
	void inserirFase (Fase fase);
	
	void deletarFase (Fase fase);
	
	void atualizarFase (Fase fase);
	
	Fase recuperarFase(Fase fase);
	
	List<Fase> recuperarFases();
	
	List<Fase> recuperarFasesMundo(Mundo mundo);
	
	List<Fase> recuperarFasesAluno(Aluno aluno);
}