//
//  SuggestedOffersCollectionViewCell.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 07/12/2021.
//

import UIKit

class SuggestedOffersCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fonts()
    }
    func fonts(){
        hintLabel.font = Fonts.appBoldFontWith(size: 19)
        companyName.font = Fonts.appBoldFontWith(size: 19)
        descriptionLabel.font = Fonts.appRegularFontWith(size: 16)
    }
}
