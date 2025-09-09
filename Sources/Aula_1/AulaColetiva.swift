class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private let capacidadeMaxima = 25

    func inscrever(aluno: Aluno) -> Bool {
        if(alunosInscritos.count < capacidadeMaxima && alunosInscritos[aluno.getMatricula()] ==  nil){
            alunosInscritos[aluno.getMatricula()] = aluno
            return true
        }
        return false
    }
}