class Linaje{
    const nombre
    var nivelDeEnergia
    const entrenador 
    var tecnologias = [ ]

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
}

class Luminico inherits Linaje{
    var nivelDeRadiacion = 0
    var nombreCristalesSolares = [ ]

    method nivelDeRadiacion(){
        return nivelDeRadiacion
    }

    method nombreCristalesSolares(){
        return nombreCristalesSolares
    }
}

class Sintetico inherits Linaje{
    var nivelProcesamientoCentral
    var cantidadModulosActivos
    var estaCertificado

    method estaCertificado(){

    }

    method nivelProcesamientoCentral(){
        return nivelProcesamientoCentral
    }

    method cantidadModulosActivos(){
        return cantidadModulosActivos
    }
}

class Etericos inherits Linaje{
    var nivelDeFluctuacion
    var cantPortalesAbiertos
}

object entrenador{
    var cantidadDeCiclosSolares = 0
    var estaEnSintonia = true
    var nivelPrecision = 0
    var rol = estrategaCuantico
}



object estrategaCuantico{

}

object arquitectoDeEnergia{

}

object guiaMental{

}