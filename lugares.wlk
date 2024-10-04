import alambique.*
import vehiculo.*

object paris {
  const property combustibleMinimo = 1000
  const kmsTotales = 600
  
  method recuerdo() = "Llavero de la torre eiffel"
  
  method restriccion() = combustibleMinimo < luke.auto().consumirCombustible(kmsTotales)

}

object buenosAires {
  const property combustibleMinimo = 500
  var property presidenteActual = milei
  const kmsPorHora = 100
  
  method recuerdo() = presidenteActual.mate()
  
  method restriccion() = kmsPorHora < luke.auto().rapido()

}

object milei {
  method mate() = "Mate"
}

object alberto {
  method mate() = "Mate con yerba"
}

object orianaSabatini {
  method mate() = "Mate con yerba"
}

object macri {
  method mate() = "Mate"
}

object bagdad {
  var property unAnio = 1990
  const recuerdos = [cerveza, bidonConPetroleoCrudo, armasDestruccionMasiva]
  const property combustibleMinimo = 1500
  
  method recuerdo() = recuerdos.find(
    { elemento => elemento.seVendeEnElAnio(unAnio) }
  )
  
  method restriccion() {
    
  }

}

object lasVegas {
  var property homenajeado = paris
  const property combustibleMinimo = 800

  method recuerdo() = homenajeado.recuerdo()

  method restriccion() = homenajeado.restriccion()

  method viaje() {
    alambiqueVeloz.consumirCombustible(combustibleMinimo)
  }
}

object cerveza {
  method seVendeEnElAnio(unAnio) = (unAnio % 10) == 3
}

object bidonConPetroleoCrudo {
  method seVendeEnElAnio(unAnio) = unAnio.even()
}

object armasDestruccionMasiva {
  method seVendeEnElAnio(unAnio) = unAnio.odd() and ((unAnio % 10) != 3)
}

