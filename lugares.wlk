import alambique.*
import vehiculo.*

object paris {
  var property combustibleMinimo = 100
  
  method recuerdo() = "Llavero de la torre eiffel"
  
  method suficienteCombustible(
    unVehiculo
  ) = combustibleMinimo <= unVehiculo.combustible()
}

object buenosAires {
  const property presidentesConYerba = ["Alberto", "Oriana sabatini", "Peron"]
  var property presidenteActual = "Milei"
  
  method recuerdo() = if (presidentesConYerba.contains(presidenteActual))
                        "Mate con yerba"
                      else "Mate"
}

object bagdad {
  // var recuerdo= ""

  // method recuerdo(unAño) =
  //     (if((unAño % 10) == 3) {
  //       recuerdo =  "Cerveza"
  //     } else if(unAño.even()) {
  //       recuerdo = "Bidon con petroleo crudo"
  //     } else {
  //       recuerdo = "Armas de destruccion masiva"
  //     })
  // method recuerdo() = recuerdo
}

object lasVegas {
  const property recuerdo = homenaje
}

object homenaje {
  var recuerdo = ""
  
  method recuerdo() = recuerdo
  
  method recuerdo(unHomenaje) {
    recuerdo = unHomenaje.recuerdo()
  }
}