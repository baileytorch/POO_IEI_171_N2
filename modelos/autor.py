from modelos.nacionalidad import Nacionalidad


class Autor(Nacionalidad):
    def __init__(self, id_autor, nombre_autor, pseudonimo, nacionalidad, bio):
        super().__init__(nacionalidad)  # type: ignore
        self.id_autor = id_autor
        self.nombre_autor = nombre_autor
        self.pseudonimo = pseudonimo
        self.bio = bio
