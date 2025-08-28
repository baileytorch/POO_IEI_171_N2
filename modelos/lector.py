from modelos.direccion import Direccion
from modelos.biblioteca import Biblioteca


class Lector(Direccion, Biblioteca):  # type: ignore
    def __init__(self, id_lector, nombre_lector, rut_lector, digito_verificador, correo_lector, telefono_lector, id_direccion, id_biblioteca):
        super().__init__(id_direccion)  # type: ignore
        super().__init__(id_biblioteca)  # type: ignore
        self.id_lector = id_lector
        self.nombre_lector = nombre_lector
        self.rut_lector = rut_lector
        self.digito_verificador = digito_verificador
        self.correo_lector = correo_lector
        self.telefono_lector = telefono_lector
