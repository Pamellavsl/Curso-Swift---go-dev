//
//  ViewController.swift
//  Tela de Login
//
//  Created by Pamella Lima on 13/03/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var autenticationButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    var usuarios: [String: String] =  ["pamellavsl@gmail.com": "123", "fabricio@gmail.com": "456", "kilvia@gmail.com": "3998"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func autenticar(_ sender: Any) {
        if let email = emailTextField.text,
           !email.isEmpty,
            let password = passwordTextField.text,
           !password.isEmpty {
            let retornaAtenticacao = autenticationEmailAndSenha(email: email, password: password)
            atualizarTela(isLogin: retornaAtenticacao)
        }
        
    }
    
    private func atualizarTela(isLogin: Bool) {
        messageLabel.isHidden = false
        
        switch isLogin {
        case true:
            messageLabel.text = String(format:"Usuário logado com sucesso")
        default:
            messageLabel.text = String(format: "Usuário ou senha incorreto")
        }
    }
}

extension ViewController {
    
    func autenticationEmailAndSenha(email: String, password: String) -> Bool {
        for user in usuarios {
            if user.key == email && user.value == password {
                return true
            }
        }
        return false
    }

}



