//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0 , VelocidadBaja = 20 , VelocidadMedia = 50 , VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    func cambioDeVelocidad()->(actual:Int,velocidadEnCadena:String){
        
        let velocidadActual = velocidad
        
        switch(velocidadActual){
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return(velocidadActual.rawValue,String(velocidadActual))
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return(velocidadActual.rawValue,String(velocidadActual))
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return(velocidadActual.rawValue,String(velocidadActual))
        default:
            velocidad = .VelocidadBaja
            return(velocidadActual.rawValue,String(velocidadActual))
        }
        
    }
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
}

var auto = Auto()

for var i:Int=0; i<20; i++ {
    print(auto.cambioDeVelocidad())
}
