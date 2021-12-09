//
//  OffersCollectionViewCell.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 08/12/2021.
//

import UIKit

class OffersCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var cashBackLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       fonts()
    }
    func fonts(){
        numLabel.font = Fonts.appRegularFontWith(size: 17)
        cashBackLabel.font = Fonts.appRegularFontWith(size: 15)
    }
    
}
