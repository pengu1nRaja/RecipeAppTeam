//
//  RecipeCell.swift
//  RecipeAppTeam
//
//  Created by PenguinRaja on 01.09.2021.
//

import UIKit

class RecipeCell: UITableViewCell {

    
    @IBOutlet var recipeImageView: UIImageView!
    
    @IBOutlet var ingredientsImageView: UIImageView!
    
    @IBOutlet var categoryImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
}
