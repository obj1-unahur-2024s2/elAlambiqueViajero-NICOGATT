import lugares.*
import vehiculo.*

object luke {
  const property recuerdos = [] 
  var property auto = alambiqueVeloz 

  method lugaresQueVisito() = recuerdos.size()
  method ultimoRecuerdo() = recuerdos.last()

  method traeUnRecuerdo(unRecuerdo) {
    recuerdos.add(unRecuerdo.recuerdo())
    if(recuerdos.size() > 1) recuerdos.remove(recuerdos.get(0))
  }

  method viajar(unLugar) {
    if (unLugar.restriccion()) {
      auto.consumirCombustible(unLugar.combustibleMinimo())
    }
  }
}