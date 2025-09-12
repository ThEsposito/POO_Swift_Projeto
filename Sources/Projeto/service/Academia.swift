class Academia {
    private let nome: String
    internal var alunosMatriculados: [String: Aluno]
    internal var instrutoresContratados: [String: Instrutor]
    private var aparelhos:[Aparelho]
    internal var aulasDisponiveis: [Aula]

    // Faço overloading pra iniciar tudo como vazio?
    init(nome: String, alunosMatriculados: [String: Aluno], instrutoresContratados: [String: Instrutor],
    aparelhos:[Aparelho], aulasDisponiveis: [Aula]){
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.instrutoresContratados = instrutoresContratados
        self.aparelhos = aparelhos
        self.aulasDisponiveis = aulasDisponiveis
    }

    public func adicionarAparelho(_ aparelho: Aparelho){
        aparelhos.append(aparelho)
    }

    public func contratarInstrutor(_ instrutor: Instrutor) throws {
        let email = instrutor.email

        if(instrutoresContratados[email] == nil){
            instrutoresContratados[instrutor.email] = instrutor
        } else {
            throw AcademiaError.instrutorJaCadastrado(instrutor: instrutor)
        }
    }

    public func adicionarAula(_ aula: Aula){
        aulasDisponiveis.append(aula)
    }

    public func matricularAluno(_ aluno: Aluno) throws {
        let matricula = aluno.getMatricula()
        if(alunosMatriculados[matricula] == nil){
            alunosMatriculados[matricula] = aluno
        } else {
            throw AcademiaError.alunoJaMatriculado(aluno: aluno)
        }
    }

    // Acho que pode retornar um Optional!!!! Ficar esperto!!
    public func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) throws -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        // Conferir se esse try repassa o erro
        try matricularAluno(novoAluno)
        return novoAluno
    }

    // Métodos de consulta
    public func buscarAluno(porMatricula matricula: String) -> Aluno? {
        // já empacota aqui?
        return alunosMatriculados[matricula]
    }

    public func listarAlunos() {
        if(alunosMatriculados.count == 0){
            print("Nenhum aluno matriculado.")
        }

        print("----- Lista de Alunos Matriculados -----")
        for aluno in alunosMatriculados.values.sorted(by: { (a1: Aluno, a2: Aluno) -> Bool in a1.nome > a2.nome }) {
            print(aluno.getDescricao())
        }
        print("---------------------------------------\n")
    }

    public func listarAulas(){
        print("----- Lista de Aulas Disponíveis ------")
        for aula in aulasDisponiveis {
            print("\(aula.getDescricao())\n")
        }
        print("---------------------------------------\n")
    }
}