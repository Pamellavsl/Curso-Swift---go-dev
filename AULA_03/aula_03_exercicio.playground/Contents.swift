import UIKit


func breakWord(palavra: String) -> [Character] {
    var arrayPalavra: [Character] = []
    for char in palavra{
        arrayPalavra.append(char)
        
    }
    return arrayPalavra
}


func palindromo(palavra: [Character]) -> Bool {
    var palavraComp: [Character] = []
    
    if (palavra.count == 1) {
        return true
    }
    
    else if (palavra.count == 2) {
        if palavra[0] == palavra[1] {
            return true
        }
    }
        
    else if (palavra.count == 3) {
            if palavra[0] == palavra [2] {
                return true
            }
        }
        
        else if (palavra.count % 2 == 0) {
            palavraComp = palavra.reversed()
            for i in 0...palavra.count/2 - 1 {
                if palavra[i] != palavraComp[i] {
                    return false
                }
                
                else {
                    continue
                }
            }
            return true
        }
        
        else if (palavra.count % 2 != 0) {
            palavraComp = palavra.reversed()
            for i in 0...palavra.count/2 - 1 {
                if palavra[i] != palavraComp[i] {
                    return false
                }
                
                else {
                    continue
                }
            }
            return true
        }
    
        return false
    }
    

var breakWords: [Character] = breakWord(palavra: "ABDHIUHDBA")
var isPalidromo = palindromo(palavra: breakWords)

print(isPalidromo)

