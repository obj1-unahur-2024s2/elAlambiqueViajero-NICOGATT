object luke {
  const property recuerdos = [] 
  
  method lugaresQueVisito() = recuerdos.size()
  method ultimoRecuerdo() = recuerdos.last()

  method traeUnRecuerdo(unRecuerdo) {
    recuerdos.add(unRecuerdo.recuerdo())
  }
}