import Foundation

let p1: Plano = Plano(nome: "rerere")

let aluno: Aluno = Aluno(nome: "Pedro", email:"pedro@gmail.com", matricula: "6 meses", plano: p1)

let inst = Instrutor(nome: "TheoPai", email: "hteozinhgames@gmail.com", especialidade: "Minecraft")
let aulaColetiva = AulaColetiva(nome: "Como zerar em 5 minutor", instrutor: inst)

print(aulaColetiva.inscrever(aluno: aluno))
print(aulaColetiva.inscrever(aluno: aluno))