Algoritmo "dados_pessoas_corrigido"

Var
    n, i, contH, contF: inteiro
    alturaAtual: real
    generoAtual: caractere
    maiorA, menorA, somaF, mediaF: real
    altura: vetor [0..99] de real
    genero: vetor [0..99] de caractere

Inicio
    escreva("Quantas pessoas serão entrevistadas? ")
    leia(n)

    para i de 0 ate n-1 faca
        escreva("Altura da ", i+1, "ª pessoa: ")
        leia(altura[i])
        escreva("Gênero da ", i+1, "ª pessoa (M/F): ")
        leia(genero[i])
    fimpara

    maiorA <- altura[0]
    menorA <- altura[0]
    somaF <- 0
    contF <- 0
    contH <- 0

    para i de 0 ate n-1 faca
        // Verifica maior e menor altura
        se altura[i] > maiorA entao
            maiorA <- altura[i]
        fimse

        se altura[i] < menorA entao
            menorA <- altura[i]
        fimse

        // Verifica gênero
        se minusculo(genero[i]) = "f" entao
            somaF <- somaF + altura[i]
            contF <- contF + 1
        senao
            contH <- contH + 1
        fimse
    fimpara

    // Calcula média com verificação
    se contF > 0 entao
        mediaF <- somaF / contF
    senao
        mediaF <- 0
    fimse

    escreval("")
    escreval("Menor altura = ", menorA:0:2)
    escreval("Maior altura = ", maiorA:0:2)
    escreval("Média das alturas das mulheres = ", mediaF:0:2)
    escreval("Número de homens = ", contH)
Fimalgoritmo
