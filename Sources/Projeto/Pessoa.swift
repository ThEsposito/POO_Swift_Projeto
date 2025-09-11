class Pessoa {
    // Colocamos como public porque nome é uma constante.
    // Não é possível atribuir um let como private(set) para futuras leituras
    // Deveríamos colocar nome como let? E se a pessoa mudar o nome no cartório?
    public let nome: String
    private(set) var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String{
        return "Nome: \(nome)\nEmail: \(email)"
    }
}