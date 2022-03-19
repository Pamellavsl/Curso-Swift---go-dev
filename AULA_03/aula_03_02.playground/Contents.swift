import UIKit

/*
 Programação funcional
 
 -> Paradigmas diferentes = várias formas de se pensar que possuem o mesmo resultado
 
 -> usa o conceito de funções
 
 -> Paradigmas funcionais: podem ser passadas como argumento
 
 */

var estudantes = ["Samuel", "Matheus", "Ana", "Ane", "Bernardo", "João"]

print(estudantes.sorted())

/*
 lhs = left hand side = lado esquerdo
 rhs = Rigth hand side = lado direito
 */

estudantes.sort { (lhs: String, rhs: String) -> Bool in
    lhs < rhs // faz a ordenação da forma que precisamos
}

print(estudantes)

let descending = estudantes.sorted(by: >) // outra forma de ordenar crescente e decrescente

print(descending)

// Merge de arrys

let array1 = [1, 2, 5, 6, 9]
let arry2 = [10, 23, 45, 56, 91]

let flatterArray = array1 + arry2
print(flatterArray)

/*
 Map
 */

var alunosNota = [4, 5, 7, 9, 3]

//var novasNotas: [Int] = []
//
//for nota in alunosNota {
//    let novaNota = nota + 1
//    novasNotas.append(novaNota)
//}
//
//print(alunosNota)
//print(novasNotas)


// Outra forma de fazer usando Map

//alunosNota = alunosNota.map({ res in
//    return res + 1
//})

print(alunosNota)

//alunosNota = alunosNota.map{ $0 + 1} // $0 -> pega o primeiro parametro e adiciona um ponto extra a cada elemento do array
//print(alunosNota)

/*
 
 Filter
 */

// Implementação padrão

//var aprovadosNotas: [Int] = []
//
//for nota in alunosNota {
//    if nota >= 6 {
//        aprovadosNotas.append(nota)
//    }
//}
//
//print(aprovadosNotas)


//alunosNota = alunosNota.filter({ res in
//    res >= 6
//})
//
//print(alunosNota)

alunosNota = alunosNota.filter { $0 >= 6}

print(alunosNota)

/*
 Reduce
 */

// anotar o reduce
