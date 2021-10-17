package modelo.dao.fase;

import java.util.List;

import modelo.entidade.estudantil.Aluno;
import modelo.entidades.jogo.Fase;

public interface FaseDAO {
	
	void inserirFase (Fase fase);
	
	void deletarFase (Fase fase);
	
	void atualizarFase (Fase fase);
	
	Fase recuperarFase(Fase fase);
	
	List<Fase> recuperarFases();
	
	List<Fase> recuperarFasesAluno(Aluno aluno);
}