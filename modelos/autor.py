from modelos.nacionalidad import Nacionalidad


class Autor(Nacionalidad):
    # CONSTRUCTOR
    def __init__(self, id_autor, nombre_autor, pseudonimo, id_nacionalidad, biografia):
        # Atributos o variables PRIVADAS
        super().__init__(id_nacionalidad)  # type: ignore
        self.id_autor = id_autor
        self.nombre_autor = nombre_autor
        self.pseudonimo = pseudonimo
        self.biografia = biografia
