enum AcademiaError: Error {
    case alunoJaMatriculado(aluno: Aluno)
    case instrutorJaCadastrado(instrutor: Instrutor)
}