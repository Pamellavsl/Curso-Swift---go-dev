//
//  CollectionViewCell.swift
//  aula_06_03
//
//  Created by Pamella Lima on 17/03/22.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageLogo: UIImageView!
    
    static let identifier = "ItemCollectionViewCell" // para manter a boa pratica

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // garante que se tiver image, ela irá aparecer na tela
    func setup(image: String) {
        if let image = UIImage(named: image) {
            imageLogo.image = image
        }

    }
}
