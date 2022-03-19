import UIKit

// comentario de uma linha

/*
 Comentário do múltiplas linhas
 */

// mutavel
var name = "Douglas" // só aceita aspas duplas pra strings
var lastName = "Nunes"

// constante
let age = 39
print(age)

// interpolação de string
let res = "Meu nome é: \(name) \(lastName), minha idade é \(age) anos"
print(res)

let res2 = name + " " + lastName
print(res2)


print(name)



// formatação de saída
print("\(name) tem \(age)")


/*
 Tipos de variáveis
 
 ---- Int
 ** corresponde ao espaço de memoria que será alocado
 - Int ou Int32
 - Int ou Int64
 
 ---- Double (representa ponto fluante de 64 bits, mas é mais preciso que o float)
 Double = 3.5
 
 ----- Float
 Float = 3.5
 
 ----- String
 String = "douglas" -> ja faz automaticamente a repatição de caracteres
 
 ----- Boolean
 Bool = true ou false
 
 */

var idade: Int = 30
var nome: String = "Doug"
var isValid: Bool = true

// Tipos Complexos

var button: UIButton = UIButton()
var label: UILabel = UILabel()






