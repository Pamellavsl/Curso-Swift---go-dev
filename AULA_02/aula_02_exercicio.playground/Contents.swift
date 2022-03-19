import UIKit



class Pilha {
    
    var pilha: [Int] = [] //criar um array vazio
    let maxElement = 2

    func push (_ element: Int) {
        if (pilha.count < maxElement) {
            pilha.append(element)
            print(pilha)
        }
        else {
            print("A pilha está cheia")
        }
    }

    func pop() {
        if (!pilha.isEmpty) {
            print(pilha.removeLast())
        }
        else {
            print("A pilha está vazia")
        }
    }
    
    
    func sizePilha() {
        print(pilha.count)
    }
}

let pilha = Pilha()

pilha.sizePilha()
pilha.push(4)
pilha.sizePilha()
pilha.push(10)
pilha.sizePilha()
pilha.push(24)
pilha.sizePilha()
pilha.pop()
pilha.pop()
pilha.pop()
pilha.pop()


