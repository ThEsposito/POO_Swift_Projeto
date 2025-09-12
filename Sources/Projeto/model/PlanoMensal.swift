class PlanoMensal: Plano {
    init(){
        super.init(nome: "Plano Mensal")
    }

    override func calcularMensalidade() -> Double{
        return 120.0
    }   
}