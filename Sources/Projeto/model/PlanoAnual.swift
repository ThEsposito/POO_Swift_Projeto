class PlanoAnual: Plano {
    init(){
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double{
        return 0.8*120.0
    }   
}