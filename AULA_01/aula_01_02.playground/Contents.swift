import SwiftUI

// Incrementos, operadores lógicos

let num1 = 10
let num2 = 20

let compair = num1 > num2 // constante de comparação que verifica se um numero é maior que o outro e o resultado [e um booleano

print(compair)

let name = "Doug"
let lastName = "Nascimento"

// Compara se a primeira letra de name "D" vem antes da primeira letra de lastName "N"

let res = name < lastName

print(res)


/*
 
 = Atribuição
 == Comparação
 != Diferente de
 < Menor
 > Maior
 >Maior igual a
 */

// expressoes

// ! operador de inversão

let isHidden: Bool = true
let isEnable: Bool = false
print(!isHidden)

/*
 
 || ou
 && e
 
 */

let resposta = isHidden || isEnable
print(resposta)

let xpto = isHidden && isEnable || 10<50
print(xpto)

/*
 
 += Incremento
 -= Decremento
 
 */

var numIncrement = 10

numIncrement += 1
numIncrement = numIncrement + 1

print(numIncrement)

