enum AulaError: Error {
    case alunoJaInscrito(aluno: Aluno, aula: Aula)
    case capacidadeMaximaAtingida
}