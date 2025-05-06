object luke {
    var lugaresVisitados = 0
    var ultimoRecuerdo = mate
    var vehiculoActual = alambiqueVeloz
    method lugaresVisitados() = lugaresVisitados
    method ultimoRecuerdo() = ultimoRecuerdo
    method vehiculoActual() = vehiculoActual
    method nuevoVehiculo(nuevoVehiculo){
        vehiculoActual = nuevoVehiculo
    }
    method puedeViajar(lugar){
       return lugar.restriccion(vehiculoActual)
    }
    method viajarA(lugar) {
        if (self.puedeViajar(lugar)){
            vehiculoActual.viajar()
            lugaresVisitados += 1
            ultimoRecuerdo = lugar.recuerdo()
        }
    }

// Lugares
}
object paris {
    method recuerdo() = llaveroTorreEiffel
    method restriccion(vehiculo) = vehiculo.combustible() >= 3
    }

object buenosAires {
    method recuerdo() = mate
    method restriccion(vehiculo) = vehiculo.esVeloz()
    }

object bagdad {
    var recuerdo = replicaJardinDeBabilonia
    method recuerdo() = recuerdo
    method nuevoRecuerdo(nuevoRecuerdo){
    recuerdo = nuevoRecuerdo
    }
    method restriccion(vehiculo) = true
} 

object lasVegas {
    var homenajeActual = paris
    method recuerdo() = homenajeActual.recuerdo()
    method nuevoHomenaje(ciudadHomenaje) {
        homenajeActual = ciudadHomenaje 
    }
    method restriccion(vehiculo) = homenajeActual.restriccion(vehiculo)    
}

object londres {
    method recuerdo() = bigBenMiniatura
    method restriccion(vehiculo) = vehiculo.combustible() > 2 && vehiculo.esVeloz()
}

// Vehiculos

object alambiqueVeloz {
    var combustible = 10
    method combustible() = combustible
    method esVeloz() = true
    method viajar(){
        combustible = combustible - 2
    } 
}

object superChatarraEspecial{
    var municion = 10
    method caniones() = 2
    method combustible() = self.caniones() * municion
    method esVeloz() = false
    method viajar(){
        municion -= 2
    }
    method recargar(){
        municion = 10
    }
}

object antiguallaBlindada{
    var gansters = 4
    method esVeloz() = gansters < 5
    method combustible() = gansters * 3
    method viajar(){
        gansters -= 1
    }
    method nuevoGanster() {gansters += 1}
}

object superConvertible{
    var estado = alambiqueVeloz
    method esVeloz() = estado.esVeloz()
    method combustible() = estado.combustible()
    method convertir(nuevoEstado){estado = nuevoEstado}
    method viajar(){
        estado.viajar()
    }
}

// Recuerdos

object llaveroTorreEiffel{

}
object mate{
    var presidenteCopado = true
    method conYerba() = presidenteCopado
    method cambiarDePresidente() {presidenteCopado = !presidenteCopado}
}

object bidonConPetroleo{

}
object armaDeDestruccionMasiva{

}
object replicaJardinDeBabilonia {
  
}
object bigBenMiniatura{

}

