import random
from collections import Counter

# Gera uma lista com numeros entre 1 e n, dispostos de forma aleatoria.
# A lista possui tamanho n.
def geraListaAleatoria(n):
    lista = random.sample(range(1, n+1), n)
    return lista

# Conta quando o numero i esta na i-esima posicao do vetor, considerando
# que o vetor comeca a ser indexado por 1.
def contaPareamentos(lista):
    contador = 0
    for i in range(0, len(lista)):
        if i == lista[i]-1:
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