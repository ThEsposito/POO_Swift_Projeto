import Projeto

let aulaColetiva = AulaColetiva(nome: "Como zerar em 5 minutor", instrutor: inst)

let aluno: Aluno = Aluno(nome: "Pedro", email:"pedro@gmail.com", matricula: "6 meses", plano: PlanoAnual())
print(aulaColetiva.inscrever(aluno: aluno))
print(aulaColetiva.inscrever(aluno: aluno))

let a1 = Aluno(nome: "Theo", email: "theo.theo@theo.com", matricula: "1234", plano: PlanoAnual())
// Mesma matrícula
let a2 = Aluno(nome: "Theo2", email: "theo.theo@theo.com2", matricula: "1234", plano: PlanoMensal())


var alunosMatriculados: [String : Aluno] = [:]
alunosMatriculados[aluno.getMatricula()] = aluno
alunosMatriculados[a1.getMatricula()] = a1
alunosMatriculados[a2.getMatricula()] = a2

let inst = Instrutor(nome: "TheoPai", email: "hteozinhgames@gmail.com", especialidade: "Minecraft")
var instrutoresContratados: [String: Instrutor] = [:]
instrutoresContratados[inst.email] = inst

var aulasDisponiveis = [aulaColetiva]
var legPress = Aparelho(nomeItem: "leg press")

var academia = Academia(nome: "acad de bairro raiz", alunosMatriculados: alunosMatriculados, instrutoresContratados: instrutoresContratados, aparelhos: [Aparelho], aulasDisponiveis: aulasDisponiveis)