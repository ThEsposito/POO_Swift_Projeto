let academia = Academia(nome: "Academia POO 360", alunosMatriculados: [ : ], instrutoresContratados: [ : ], aparelhos: [], aulasDisponiveis: [])

let planoMensal = PlanoMensal() 
let planoAnual = PlanoAnual()

let inst1 = Instrutor(nome: "Theo Personal Trainer", email: "personal.theozao@gmail.com", especialidade: "Musculação")
let inst2 = Instrutor(nome: "Felipe Personal Trainer", email: "personal.felipe@gmail.com", especialidade: "Fisioterapia")

do{
    try academia.contratarInstrutor(inst1)
    try academia.contratarInstrutor(inst2)
} catch (AcademiaError.instrutorJaCadastrado(let instrutorJaCadastrado)){
    print("O instrutor \(instrutorJaCadastrado) já havia sido cadastrado!!")
}

print()

var aluno1:Aluno
var aluno2:Aluno

do {
    aluno1 = try| academia.matricularAluno(nome: "Theo Magrelo", email: "theo.magrelo@cliente.com", matricula: "1234", plano: planoMensal)
} catch(AcademiaError.alunoJaMatriculado(let alunoRejeitado)){
    print("O aluno \(alunoRejeitado.nome) já havia sido inscrito!!")
    aluno1 = alunoRejeitado
} 


do{
    aluno2 = try academia.matricularAluno(nome: "Theo Maromba", email: "theo.maromba@cliente.com", matricula: "1235", plano: planoAnual)
} catch(AcademiaError.alunoJaMatriculado(let alunoRejeitado)){
    print("O aluno \(alunoRejeitado.nome) já havia sido inscrito!!")
    aluno2 = alunoRejeitado
} 

print()

let aulaPersonal = AulaPersonal(nome: "Treino monstro para hipertrofia", instrutor: inst1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Zumba", instrutor: inst2, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

print("Adicionando paradas à aula coletiva")

do {
    try aulaColetiva.inscrever(aluno: aluno1)
} catch(AulaError.alunoJaInscrito(let alunoRejeitado, let aula)){
    print("Aluno \(alunoRejeitado.nome) já havia sido inscrito na aula \(aula.nome)")
}

do{
    try aulaColetiva.inscrever(aluno: aluno2)
} catch(AulaError.alunoJaInscrito(let alunoRejeitado, let aula)){
    print("Aluno \(alunoRejeitado.nome) já havia sido inscrito na aula \(aula.nome)")
}

let aluno3 = Aluno(nome: "Theo Gordao", email: "theo.gordao@gmail.com", matricula: "1236", plano: planoAnual)
do{
    try aulaColetiva.inscrever(aluno: aluno3)
} catch(AulaError.alunoJaInscrito(let alunoRejeitado, let aula)){
    print("Aluno \(alunoRejeitado.nome) já havia sido inscrito na aula \(aula.nome)")
}

let aluno4 = Aluno(nome: "NomeDoAluno4", email: "aluno4@cliente.com.br", matricula: "1237", plano: planoMensal)

do {
    try aulaColetiva.inscrever(aluno: aluno4)
} catch(AulaError.alunoJaInscrito(let alunoRejeitado, let aula)){
    print("Aluno \(alunoRejeitado.nome) já havia sido inscrito na aula \(aula.nome)")
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