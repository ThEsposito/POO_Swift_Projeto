class Aparelho: Manutencao{
    internal let nomeItem: String
    internal var dataUltimaManutencao: String

    func realizarManutencao() -> Bool{
        print("Realizando manutenção do aparelho \(nomeItem)!")
        self.dataUltimaManutencao = "30/08/2015"
        return true
    }

    init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
    }
}