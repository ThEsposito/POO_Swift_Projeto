extension Academia {
    func gerarRelatorio () -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        return (self.alunosMatriculados.count, instrutoresContratados.count, aulasDisponiveis.count)
    }
}