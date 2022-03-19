//
//  SecondViewController.swift
//  aula_06_02
//
//  Created by Pamella Lima on 17/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    var property: Livros?
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet var autorLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("A view apareceu")
        

       setup(livro: property)
        
        secondImageView.layer.cornerRadius = 15
        descricaoLabel.adjustsFontSizeToFitWidth = true
        descricaoLabel.numberOfLines = 0
    
    }
    
    func setup(livro: Livros?){
        
        if let livro = livro {
            secondImageView.image = UIImage(named: livro.logo)
            autorLabel.text = livro.autor
            descricaoLabel.text = livro.descricao
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("A view vai aparecer")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("A view vai desaparecer")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
