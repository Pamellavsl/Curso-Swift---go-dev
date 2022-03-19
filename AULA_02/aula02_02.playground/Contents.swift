import UIKit

/*
 
 Servem para
 
 if let: valida e o fluxo continua
 
 
 guard let:
 
 */

func icon() -> UIImage {
    
    guard let image = UIImage(named: "Photo") else {
        return UIImage(named: "Default")! // aborta tudo que vem abaixo
    }
    
    return image
}

func someFunc(parameter: String?) {
    
    guard let parameter = parameter else {
        return
    } // ele para nesse escopo, não executa o que está adiante. O return que causa esse barramento de execução
    
    print(parameter)
}

//someFunc(parameter: "Pamela")

func getUser(name: String?) -> String {
    
    if let name = name {
        return name
    }
    return "Doug"
}

getUser(name: nil)
