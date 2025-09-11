let academia = Academia(nome: "Academia POO 360", alunosMatriculados: [ : ], instrutoresContratados: [ : ], aparelhos: [], aulasDisponiveis: [])

let planoMensal = PlanoMensal() 
let planoAnual = PlanoAnual()

let inst1 = Instrutor(nome: "Theo Personal Trainer", email: "personal.theozao@gmail.com", especialidade: "Musculação")
let inst2 = Instrutor(nome: "Felipe Personal Trainer", email: "personal.felipe@gmail.com", especialidade: "Fisioterapia")

academia.contratarInstrutor(inst1)
academia.contratarInstrutor(inst2)
print()

let aluno1 = academia.matricularAluno(nome: "Theo Magrelo", email: "theo.magrelo@cliente.com", matricula: "1234", plano: planoMensal)
let aluno2 = academia.matricularAluno(nome: "Theo Maromba", email: "theo.maromba@cliente.com", matricula: "1235", plano: planoAnual)
print()

let aulaPersonal = AulaPersonal(nome: "Treino monstro para hipertrofia", instrutor: inst1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Zumba", instrutor: inst2, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

print("Adicionando paradas à aula coletiva")
aulaColetiva.inscrever(aluno: aluno1)
aulaColetiva.inscrever(aluno: aluno2)

let aluno3 = Aluno(nome: "Theo Gordao", email: "theo.gordao@gmail.com", matricula: "1236", plano: planoAnual)

aulaColetiva.inscrever(aluno: aluno3)

let aluno4 = Aluno(nome: "NomeDoAluno4", email: "aluno4@cliente.com.br", matricula: "1237", plano: planoMensal)
aulaColetiva.inscrever(aluno: aluno4)
print()

academia.listarAlunos()
print()
academia.listarAulas()
print("\n")
var aulas: [Aula] = [aulaPersonal, aulaColetiva]
for aula in aulas {
    print(aula.getDescricao(),"\n")
}

var pessoas: [Pessoa] = [aluno1, aluno2, inst1, inst2]
for pessoa in pessoas {
    print(pessoa.getDescricao(),"\n")
}
print("--------------Relatório--------------")
let relatorio = Academia.gerarRelatorio(academia)
print("Total de alunos: \(relatorio().0)\nTotal de instrutores: \(relatorio().1)\nTotal de aulas: \(relatorio().2)")
print("-------------------------------------")