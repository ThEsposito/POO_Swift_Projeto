class Aula {
    private let nome: String
    private var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor){
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Nome da Aula: \(nome) | Instrutor: \(instrutor.nome)"
    }
}