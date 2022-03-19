import UIKit

/*
 Coleção de Dados - Array
 
 */

// Pode ser variável ou constante
// coleção de dados de um objeto único

var cars = ["FUSCA", "FERRARI", "AUDI A3", "CELTA", "MAREA TURBO"]

typealias cadeia = String // criação de tipos baseados na tipagem primária

var suco: [cadeia] = ["Laranja", "Limao", "Acerola"]

// para acessar elementos



print(cars.count)
cars.append("GOL")
cars.insert("HB20", at: 1)
cars.removeLast()
cars.removeFirst()

cars.removeAll()

print(cars)


// Dicionário - Par chave e valor

var dic: [[String: String]] = [["name": "Pamela", "email": "pamelavsl@gmail.com"]]

print(dic[0]["name"])

print(dic[0]["email"]!) // diz ao compilador que com certeza ele vai receber um dado -> forceunwrap









