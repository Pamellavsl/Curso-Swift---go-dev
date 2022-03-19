import UIKit

let isHidden = true
let isEnable = false

if (isHidden) {
    print("Caso verdadeiro")
}

else if (isEnable) {
    print("Caso Verdadeiro")
}

else {
    print("Caso Falso")
}


var system: String
let company: String = "Apple"

if company == company {
    system = "IOS"
}

else {
    system = "Android"
}

print(system)

// IF ternário

system = company == "Apple" ? "IOS": "Android"

