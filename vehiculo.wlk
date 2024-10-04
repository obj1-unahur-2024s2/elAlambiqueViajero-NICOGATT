object alambiqueVeloz {
  var property combustible = 3500
  method velocidadMinima() = 100 

  method consumirCombustible(kms) {
    combustible = combustible - kms * 5
  }

  method rapido() = self.velocidadMinima() * 3
}

object superChatarraEspecial{
  var property municiones = 100
  
  method velocidadMinima() = 50
  
  method consumirCombustible(kms) {
    municiones = municiones - (kms ** 2)
  } 

  method rapido() = self.velocidadMinima() * 2
}

object antiguallaBlindada{
  var property cantidadDeGangster = 0 
}

object superConvertible{
  var property comportamiento = superChatarraEspecial

  method velocidadMinima() = comportamiento.velocidadMinima()

  method consumirCombustible(kms) = comportamiento.consumirCombustible(kms)

  method rapido() = comportamiento.rapido()
}

