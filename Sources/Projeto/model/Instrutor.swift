// TODO: Instrutor parece não ter um identificador próprio inutável. Devemos usar o email?

class Instrutor: Pessoa {
    private var especialidade: String

    init(nome: String, email: String, especialidade: String) {
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String{
        return "\(super.getDescricao())\nEspecialidade: \(self.especialidade)"
    }
}