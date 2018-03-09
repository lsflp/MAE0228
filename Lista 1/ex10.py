import random
from collections import Counter

def geraListaAleatoria(n):
    lista = random.sample(range(0, n), n)
    return lista

def contaPareamentos(lista):
    contador = 0
    for i in range(0, len(lista)):
        if i == lista[i]:
            contador += 1
    return contador

def main():

    numeroPareamentos = list()
    for i in range(100):
        lista = geraListaAleatoria(5)
        pareamentos = contaPareamentos(lista)
        numeroPareamentos.append(pareamentos)

    print(Counter(numeroPareamentos))

    numeroPareamentos = list()
    for i in range(100):
        lista = geraListaAleatoria(20)
        pareamentos = contaPareamentos(lista)
        numeroPareamentos.append(pareamentos)
    
    print(Counter(numeroPareamentos))

if __name__ == "__main__":
    main()