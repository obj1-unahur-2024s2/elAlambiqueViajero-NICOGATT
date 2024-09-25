import alambique.*
import vehiculo.*


object paris {
  var property combustibleMinimo = 100 

  method recuerdo() = "Llavero de la torre eiffel"
  method suficienteCombustible(unVehiculo) {
    return combustibleMinimo <= unVehiculo.combustible()
  }
}

object buenosAires {
  const property presidentes = ["Milei", "Alberto", "Oriana sabatini"] 
  method recuerdo() = mate
}

object bagdad {
  var property recuerdo = "Bidon con petroleo crudo"
}

object lasVegas {
  const property recuerdo = homenaje   
}

object homenaje {
  var recuerdo = ""

  method recuerdo () = recuerdo

  method recuerdo(unHomenaje) {
    recuerdo = unHomenaje.recuerdo()
  }
}

object mate {
  
}