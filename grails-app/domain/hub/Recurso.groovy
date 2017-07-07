package hub

class Recurso {

    String nombre
    String descripcion
    String taxonomia
    String url
    String path

    static belongsTo = [ conjunto : ConjuntoDeDatos ]

    static constraints = {
    }
}
