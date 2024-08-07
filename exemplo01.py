class VeiculoMotor:

    def __init__(self, minhaMarca, meuModelo):

        self.marca = minhaMarca
        self.modelo = meuModelo

    def ligar(self, barulho = "vrum vrum"):
        print("Ligando com", barulho)

    def desligar(self, barulho = "cof! cof!"):
        print("Desligando com", barulho)

class Motoca(VeiculoMotor):

    qtdrodas = 2

    def ligar(self, grau):
        print("Ligando com", grau)

class Carreta(VeiculoMotor):

    qtdrodas = 12
    capacidade = 8000
    

hondinha = Motoca("honda", "CG125")
hondinha.ligar('Tuim! Tuim!')
print(hondinha.qtdrodas)