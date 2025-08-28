from modelos.comuna import Comuna


class Direccion(Comuna):
    def __init__(self, id_direccion, codigo_comuna, calle, numero):
        super().__init__(codigo_comuna)  # pyright: ignore[reportCallIssue]
        self.id_direccion = id_direccion
        self.calle = calle
        self.numero = numero
