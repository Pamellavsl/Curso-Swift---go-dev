//
//  ViewController.swift
//  aula_06_03
//
//  Created by Pamella Lima on 17/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let livros = ["cinderela_pop", "deixe_a_deve_cair", "depois_dos_quinze", "eleanor_park", "fan_girl", "no_mundo_da_luna", "o_pequeno_principe_preto", "o_teorema_de_katherine", "pequeno_principe", "quando_a_noite_cai", "quem-é-você-alaska", "sol_para_todos"]
    
    @IBOutlet weak var collection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        registerCell()
        collectionlayout()
        // Do any additional setup after loading the view.
    }
    
    private func delegates() {
        collection.delegate = self
        collection.dataSource = self
    }
    
    private func registerCell () {
        
        let nib = UINib(nibName: ItemCollectionViewCell.identifier, bundle: nil)
        collection.register(nib, forCellWithReuseIdentifier: ItemCollectionViewCell.identifier)
    }
    
    private func collectionlayout() { // customização do arquivo xib criado
        let layout = UICollectionViewFlowLayout()
       // layout.itemSize = CGSize(width: 90, height: 90)
        layout.itemSize = CGSize(width: 0.4*view.frame.width, height: 240)//pegar toda largura
        layout.minimumLineSpacing = 10
        layout.collectionView?.numberOfItems(inSection: 2)
        
        collection.collectionViewLayout = layout
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return livros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier, for: indexPath) as? ItemCollectionViewCell else {return UICollectionViewCell() }
        
        let livro = livros[indexPath.row]
        cell.setup(image: livro)
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout { //manipulação do layout
    
}

