class Academia {
    private let nome: String
    private var alunosMatriculados: [String: Aluno]
    private var instrutoresContratados: [String: Instrutor]
    private var aparelhos:[Aparelho]
    private var aulasDisponiveis: [Aula]

    // Faço overloading pra iniciar tudo como vazio?
    init(nome: String, alunosMatriculados: [String: Aluno], instrutoresContratados: [String: Instrutor],
    aparelhos:[Aparelho], aulasDisponiveis: [Aula]){
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.instrutoresContratados = instrutoresContratados
        self.aparelhos = aparelhos
        self.aulasDisponiveis = aulasDisponiveis
    }

    public func adicionarAparelho(_ aula: Aula){
        aulasDisponiveis.append(aula)
    }

    public func contratarInstrutor(_ instrutor: Instrutor){
        let email = instrutor.email
        if(instrutoresContratados[email] != nil){
            instrutoresContratados[instrutor.email] = instrutor
            print("Instrutor contratado com sucesso")
        } else {
            print("Instrutor já contratado")
        }
    }

    // Poderia retornar um bool, indicando se foi adicionado ou não
    public func matricularAluno(_ aluno: Aluno){
        let matricula = aluno.getMatricula()
        if(alunosMatriculados[matricula] != nil){
            alunosMatriculados[matricula] = aluno
            print("Aluno adicionado com sucesso!")
        } else {
            // Poderíamos lançar uma exceção aqui!
            print("Erro: Aluno com matrícula \(matricula) já existe.")
        }
    }

    public func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(novoAluno)
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
            return
        }

        print("--- Lista de Alunos Matriculados ---")
        // Dá certo isso daqui??
        for aluno in alunosMatriculados.values.sorted(by: { (a1: Aluno, a2: Aluno) -> Bool in a1.nome > a2.nome }) {
            print(aluno.getDescricao())
        }
        print("------------------------------------")
    }

    public func listarAulas(){
        print("--- Lista de Aulas Disponíveis ---")
        
        for aula in aulasDisponiveis {
            print("\n\n\(aula.getDescricao())")
        }

        print("-------------------------------------")
    }
}