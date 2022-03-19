import UIKit
import Foundation

let notaMedia = 4


switch notaMedia {
case 0:
    print("Vcoê precisa estudar")
case 1...3:
    print("Você está abaixo da média")
case 4:
    print("Você está abaixo da média - 4")
default:
    print("Você não informou uma nota")
}


/*
 Enum é baseado em casos
 */

enum Aluno {
    case Joao
    case Pedro
    case Maria
}

let aluno = Aluno.Joao

print(aluno)

switch aluno {
case .Joao:
    text("Nota 6") // boa pratica de programação
case .Pedro:
    print("Nota 10")
case .Maria:
    print("Nota 10")
}

func text(_ text: String) {
    print("Nota 6")
}

enum State {
    case Sucess
    case Error
    case Loading
}

let state = State.Loading // inicialmente a api fica no estado de carregando, enquanto busca a informação

switch state { // não precisa do default porque todos os casos estabelecidos no enum estão no escopo do enum
    
case .Sucess:
    print("Sucesso")
case .Error:
    print("Eroor")
case .Loading:
    print("Carregando")
}

// Criando enums de forma tipada

enum State2: String {
    case sucess = "Efetuada com sucesso"
    case failure = "Falha, tente novamente"
}

print(State2.sucess) // printa só o sucess. Te dá o retorno do caso (valor declarado)
print(State2.sucess.rawValue) // pegar o valor que está dentro de variável

enum String2: String { // Enum serve para armazenar as strings default de um sistema -> boa prática de progrmação. Exemplo enum com casos de sucesso
    case titleButton = "Comprar"
    case titleLabel = "O texte referente"
}

let button = UIButton()
button.setTitle(String2.titleButton.rawValue, for: .normal)

enum Page: Int {
    case one = 30, two, three, four // segue a ordem sequencial
    
    func getPage() -> Int {
        return self.rawValue
    }
}

var numberPage = Page.three

print(numberPage.getPage())

enum BankDeposit {
    case inValue(Int)
    case inCheck(Bool)
}

func makeDeposit(values: BankDeposit) {
    
    switch values {
    case .inValue(let value):
        print("O valor passado é \(value)")
    case .inCheck(let isCheck):
        print("In Check: \(isCheck)")
    }
}

let deposit = BankDeposit.inCheck(true)

makeDeposit(values: deposit)






