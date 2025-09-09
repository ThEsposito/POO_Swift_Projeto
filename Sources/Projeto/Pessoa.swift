class Pessoa {
    private let nome: String
    private var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String{
        return "Nome: \(nome)\nEmail: \(email)"
    }
}