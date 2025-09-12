class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private var capacidadeMaxima: Int

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int){
        if(capacidadeMaxima > 0){
            self.capacidadeMaxima = capacidadeMaxima
        } else {
            self.capacidadeMaxima = 25
        }
        super.init(nome: nome, instrutor: instrutor)
    }
    
    // Esse construtor mantém a capacidade máxima como o valor padrão. Precisei usar override porque tem a mesma quantidade
    // de parâmetros que o construtor da classe pai
    override init(nome: String, instrutor: Instrutor){
        self.capacidadeMaxima = 25 // Valor padrão
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) throws {
        if(alunosInscritos.count >= capacidadeMaxima) {
            throw AulaError.capacidadeMaximaAtingida(aluno: aluno, aula: self)
        } else if(alunosInscritos[aluno.getMatricula()] !=  nil){
            print("ERRO: aluno \(aluno.nome) não foi inscrito!")
            throw AulaError.alunoJaInscrito(aluno: aluno, aula: self)
        } else {
            alunosInscritos[aluno.getMatricula()] = aluno
        }
        
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) \nNúmero de vagas ocupadas: \(alunosInscritos.count) | Máximo: \(capacidadeMaxima)"
    }
}
