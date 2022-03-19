//
//  CustomTableViewCell.swift
//  aula_06_02
//
//  Created by Pamella Lima on 15/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        logoImageView.layer.cornerRadius = 15
    }
    
    
    func setup(logo: String, name: String, description: String) {
        logoImageView.image = UIImage(named: logo)
        nameLabel.text = name
        descriptionLabel.text = description
    }
    
    
    static let altura: CGFloat = 110
    
    
}
