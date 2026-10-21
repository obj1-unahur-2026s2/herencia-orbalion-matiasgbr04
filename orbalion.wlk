class Linaje{
    const nombre
    var nivelDeEnergia
    const entrenador 
    var tecnologias = [ ]

    method energiaTotal()

    method nombre(){
        return nombre
    }

    method nivelDeEnergia(){
        return nivelDeEnergia
    }

    method entrenador(){
        return entrenador
    }

    method tecnologias(){
        return tecnologias
    }

    method esDePrestigioUniversal()
}

class Luminico inherits Linaje{
    var nivelDeRadiacion = 0
    var nombreCristalesSolares = [ ]

    override method esDePrestigioUniversal(){
        return nombreCristalesSolares.size() > 2 and entrenador.esEliteGalactico() and tecnologias.count({t => t.activa() > 0})
    }

    method nivelDeRadiacion(){
        return nivelDeRadiacion
    }

    method nombreCristalesSolares(){
        return nombreCristalesSolares
    }

    override method energiaTotal(){
        var cant = nivelDeEnergia + self.tecnologias().sum({t => t.valorEnergetico()})
        if (nivelDeRadiacion <= 5000){
            cant += nivelDeEnergia.div(10)
        }
    }
}

class Sintetico inherits Linaje{
    var nivelProcesamientoCentral
    var cantidadModulosActivos
    var estaCertificado

    override method esDePrestigioUniversal(){
        return estaCertificado and cantidadModulosActivos > 3 and tecnologias.any({t => t.activa() == false})
    }

    method nivelProcesamientoCentral(){
        return nivelProcesamientoCentral
    }

    method cantidadModulosActivos(){
        return cantidadModulosActivos
    }

    override method energiaTotal(){
        if( cantidadModulosActivos > 5){
            nivelDeEnergia -= nivelDeEnergia.div(20)
        }
        return nivelDeEnergia
    }
}

class Etericos inherits Linaje{
    var nivelDeFluctuacion
    var cantPortalesAbiertos
}

class Entrenador{
    var cantidadDeCiclosSolares
    var estaEnSintonia
    var nivelPrecision
    var rol

    method esEliteGalactico(){
        return cantidadDeCiclosSolares > 10 and rol.cumpleSuRol()
    }

    method asignarRol(nuevoRol){
        if(nuevoRol == estrategaCuantico or nuevoRol == arquitectoDeEnergia or nuevoRol == guiaMental){
            rol = nuevoRol
        } else{
            self.error("Rol no homologado por la FOZ")
        }
    }

    method cantidadDeCiclosSolares(){
        return cantidadDeCiclosSolares
    }

    method estaEnSintonia(){
        return estaEnSintonia
    }

    method nivelPrecision(){
        return nivelPrecision
    }
}

class Tecnologia{
    const nombre
    var valorEnergetico
    var activa

    method activa(){
        return activa
    }

    method valorEnergetico(){
        return valorEnergetico
    }
}



object estrategaCuantico{
    method cumpleSuRol(entrenador){
        return entrenador.nivelPrecision() > 80
    }
}

object arquitectoDeEnergia{
    method cumpleSuRol(entrenador){
        return entrenador.estaEnSintonia()
    }
}

object guiaMental{
    method cumpleSuRol(entrenador){
        return true
    }
}