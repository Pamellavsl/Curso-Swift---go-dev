import UIKit

/*
 Conceito de Opcional: um container de um valor que pode vir ou não
 */

var message: String? // usado quando não sabemos se vamos receber um dado

message = "Minha mensagem"

print(message)
print(message ?? "a") // print sem a mensagem "Optional"

// É necessário fazer a trataiva do optional

if let messageValue = message { // se a mensage for diferente de nulo, ele vai printar a mesagem, atribuindo valor a ela
    print(message) // verifica se a variável é diferente de nulo, e se for verdadeiro, pega a variável pra si
}

if message != nil { // mesma coisa que o if let
    print(message)
}
else {
    print("Estou null")
}



