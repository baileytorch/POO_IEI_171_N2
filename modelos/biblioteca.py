from modelos.direccion import Direccion


class Biblioteca(Direccion):
    def __init__(self, id_biblioteca, nombre_biblioteca, id_direccion):
        super().__init__(id_direccion)  # type: ignore
        self.id_biblioteca = id_biblioteca
        self.nombre_biblioteca = nombre_biblioteca
