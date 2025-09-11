class AulaPersonal: Aula {
    private var aluno: Aluno

    init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.aluno = aluno
        super.init(nome: nome, instrutor: instrutor)
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) \nAluno: \(aluno.nome) | Matricula: \(aluno.getMatricula())"
    }
}