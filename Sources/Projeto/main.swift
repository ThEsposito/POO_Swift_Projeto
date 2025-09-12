let academia = Academia(nome: "Academia POO 360", alunosMatriculados: [ : ], instrutoresContratados: [ : ], aparelhos: [], aulasDisponiveis: [])

let planoMensal = PlanoMensal() 
let planoAnual = PlanoAnual()

let inst1 = Instrutor(nome: "Theo Personal Trainer", email: "personal.theozao@gmail.com", especialidade: "Musculação")
let inst2 = Instrutor(nome: "Felipe Personal Trainer", email: "personal.felipe@gmail.com", especialidade: "Fisioterapia")

academia.contratarInstrutor(inst1)
academia.contratarInstrutor(inst2)
print()

let aluno1 = academia.matricularAluno(nome: "GTheo Magrelo", email: "theo.magrelo@cliente.com", matricula: "1234", plano: planoMensal)
let aluno2 = academia.matricularAluno(nome: "NTheo Maromba", email: "theo.maromba@cliente.com", matricula: "1235", plano: planoAnual)
print()

let aulaPersonal = AulaPersonal(nome: "Treino monstro para hipertrofia", instrutor: inst1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Zumba", instrutor: inst2, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

print("Adicionando paradas à aula coletiva")
if(aulaColetiva.inscrever(aluno: aluno1)){
    print("Aluno \(aluno1.nome) inscrito com sucesso em \(aulaColetiva.nome)")
} else {
    print("ERRO: aluno \(aluno1.nome) não foi inscrito!")
}

if(aulaColetiva.inscrever(aluno: aluno2)){
    print("Aluno \(aluno2.nome) inscrito com sucesso em \(aulaColetiva.nome)")
} else {
    print("ERRO: aluno \(aluno2.nome) não foi inscrito!")
}

let aluno3 = Aluno(nome: "LTheo Gordao", email: "theo.gordao@gmail.com", matricula: "1236", plano: planoAnual)

if(aulaColetiva.inscrever(aluno: aluno3)){
    print("Aluno \(aluno3.nome) inscrito com sucesso em \(aulaColetiva.nome)")    
} else {
    print("ERRO: aluno \(aluno3.nome) não foi inscrito!")
}

let aluno4 = Aluno(nome: "LNomeDoAluno4", email: "aluno4@cliente.com.br", matricula: "1237", plano: planoMensal)
if(aulaColetiva: aluno4)){
    print("Aluno \(aluno4.nome) inscrito com sucesso em \(aulaColetiva.nome)")
} else {
    print("ERRO: aluno \(aluno4.nome) não foi inscrito!")
}
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