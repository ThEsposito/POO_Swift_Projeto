class Aparelho: Manutencao{
    internal let nomeItem: String
    internal var dataUltimaManutencao: String

    func realizarManutencao() -> Bool{
        print("Realizando manutenção do aparelho \(nomeItem)!")
        return true
    }

    init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
    }
}