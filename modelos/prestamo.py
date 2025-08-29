from modelos.lector import Lector
from modelos.libro import Libro


class Prestamo(Lector, Libro):  # type: ignore
    def __init(self, rut_lector, id_libro, id_prestamo, fecha_prestamo, fecha_devolucion, fecha_retorno):
        super().__init__(rut_lector)  # type: ignore
        super().__init__(id_libro)  # type: ignore
        self.id_prestamo = id_prestamo
        self.fecha_prestamo = fecha_prestamo
        self.fecha_devolucion = fecha_devolucion
        self.fecha_retorno = fecha_retorno
