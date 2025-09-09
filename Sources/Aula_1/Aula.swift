class Aula {
    private let nome: String
    private var instrutor: Instrutor

    func getDescricao() -> String {
        return "Nome da Aula: \(nome) | Instrutor: \(instrutor)"
    }
}