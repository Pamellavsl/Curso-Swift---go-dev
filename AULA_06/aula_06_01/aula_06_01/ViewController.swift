//
//  ViewController.swift
//  aula_06_01
//
//  Created by Pamella Lima on 15/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        delegate()
    }
    
    private func delegate() {
        // o delegate controla funções específicas da table View
        tableView.delegate = self
        
        // para manipular os dados da view
        tableView.dataSource = self
    }

}


extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Eu cliquei na celula: \(indexPath.row)")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let index = indexPath.row // retorna todas as linhas
        
        // vai reuzar a celular que criamos
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // na contextView tenho que preencher os campos que vem por default = título e subtítulo
        
        cell.textLabel?.text = "Título de celula"
        cell.detailTextLabel?.text = "Estes símbolos especiais são texto real e disponível para copiar e colar em qualquer lugar, tal como o Microsoft Word, Facebook, Twitter, HTML ou blogs. Clique no ícone para copiar para o clipboard"
        
        cell.imageView?.image = UIImage(systemName: "sun.dust.fill")
        cell.imageView?.tintColor = .orange
        
        // retornar os campos que foram definidos de textLabel e detailTextLabel
        return cell
    }
}
