class Animal:
    def __init__(self) -> None:
        self.especie = ''
        self.genero = ''
        self.subespecie = ''

    def setEspecie(self, especie):
       self.especie = especie.strip(especie)

    def setGenero(self, genero):
        self.genero = genero.strip(genero)

    def setSubespecie(self, subespecie):  
        self.setSubespecie = subespecie.strip(subespecie)  

    def setName(self, name = ""):
        self.name = name.strip(name)

    def getGenero(self):
        if self.genero != '':
             return self.genero 
        else:
            return "Erro ao mostrar espécie."    

    def getGenero(self):
        if self.genero != '':
             return self.genero     
        else:
            return "Erro ao mostrar gênero."

    def getsubespecie(self):
        if self.subespecie != '':   
            return self.subespecie
        else: 
            return "Erro ao mostrar subespecie."

minhoca = Animal() 

minhoca.setEspecie("       Taturana        ")   
print(minhoca.getEspecie())

minhoca.biscoito = "        Tatyranada         "
print(minhoca.biscoito)                