import UIKit

func myCar() {
    print("Meu Carro")
}

func myCar(name: String) {
    print("Meu carro é \(name)")
}

func myName(name first: String) {
    print("Meu nome é: \(first)")
    
}

myCar()
myCar(name: "Fusca")
myName(name: "Doug")

func myAge(age: Int) {
    print("Minha idade é: \(age)")
}

myAge(age: 87)

func myAge2(_ age: Int, year: Int) {      // na chamada da função é omitida o nome do parâmetro. O _ indica ao compilador que não é obrigada a passar o nome do parametro na chamada da função, pode passar apenas o valor.
    print("Minha idade é: \(age)")
}

myAge2(32, year: 2000)

/*
 
 Função com retorno
 
 */

func getName(name: String, lastName: String) -> String  { // retora uma String {
    name + " " + lastName
}

print(getName(name: "Pamela", lastName: "Lima"))

func getPersion(name: String, lastName: String, age: Int) -> (String, String, Int) {
    return(name, lastName, age)
}
// para printar uma tupla [e necessário criar uma tupla

let person = getPersion(name: "Fabricio", lastName: "Carvalho", age: 21) // retorno da função. É necessário jogar o retorno dentro de uma variável para conseguir acessar os valores dela

print(person.2) // 0 -> name; 1 -> lastName

/*
 Passar uma função como parâmetro de outra função
 
 closures
 */

func makeBuy(onCompletion: (Int) -> Void) {
    onCompletion(10)
}

makeBuy { res in
    print("res: \(res)")
}

// se tratando de uma api, a funçao ficaria travad até receber a resposta da API

struct Person {
    var name: String?
    var age: Int
}

func makebuyPerson(value: Int, onCompletion: (Person) -> Void) {
    let person = Person(name: "Luna", age: 13)
    onCompletion(person)
}

makebuyPerson(value: 13) { Person in
    print(Person)
}

typealias onCompetion = (Int) -> Void // apelidando uma propriedade ou método, ou função, para que fique fácil para compreensao

// ViewModel -> implementação
func makeBuyProduct(onCompetion: onCompetion){
    onCompetion(27) // é como se fosse um retorno
}

// ViewController -> resposta
makeBuyProduct { res in
    print(res)
}

makeBuyProduct {
    print($0) // forma simplificada de pegar o primeiro argumento
}

// tratativas necessárias para exibiir para o usuário a resposta
