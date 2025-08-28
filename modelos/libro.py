from modelos.biblioteca import Biblioteca
from modelos.autor import Autor
from modelos.categoria import Categoria


class Libro(Biblioteca, Autor, Categoria):
    def __init__(self, id_libro, id_biblioteca, id_autor, id_categoria, titulo, paginas, copias):
        super().__init__(id_biblioteca)  # type: ignore
        super().__init__(id_autor)  # type: ignore
        super().__init__(id_categoria)  # type: ignore
        self.id_libro = id_libro
        self.titulo = titulo
        self.paginas = paginas
        self.copias = copias
