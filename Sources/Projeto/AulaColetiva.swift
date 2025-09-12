class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private var capacidadeMaxima: Int

    // Em caso de uma entrada inválida, define a capacidade máxima como o padrão
    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int){
        if(capacidadeMaxima > 0){
            self.capacidadeMaxima = capacidadeMaxima
        } else {
            self.capacidadeMaxima = 25
        }
        super.init(nome: nome, instrutor: instrutor)
    }
    
    // Esse construtor mantém a capacidade máxima como o valor padrão. 
    // Precisei usar override porque tem a mesma quantidade de parâmetros que o construtor da classe pai
    override init(nome: String, instrutor: Instrutor){
        self.capacidadeMaxima = 25 // Valor padrão
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if(alunosInscritos.count < capacidadeMaxima && alunosInscritos[aluno.getMatricula()] ==  nil){
            alunosInscritos[aluno.getMatricula()] = aluno
            print("Aluno \(aluno.nome) inscrito com sucesso em \(self.nome)")
            return true
        }
        print("ERRO: aluno \(aluno.nome) não foi inscrito!")
        return false
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) \nNúmero de vagas ocupadas: \(alunosInscritos.count) | Máximo: \(capacidadeMaxima)"
    }
}
