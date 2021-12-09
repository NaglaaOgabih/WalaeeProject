//
//  DetailOfferViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 09/12/2021.
//

import UIKit

class DetailOfferViewController: UIViewController {
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var offerLabel: UILabel!
    @IBOutlet weak var boxLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailBox: UILabel!
    @IBOutlet weak var onlineLabel: UILabel!
    @IBOutlet weak var localLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fonts()
        
    }
    
    func fonts(){
        companyName.font = Fonts.appBoldFontWith(size: 21)
        onlineLabel.font = Fonts.appRegularFontWith(size: 17)
        localLabel.font = Fonts.appRegularFontWith(size: 17)
        offerLabel.font = Fonts.appBoldFontWith(size: 20)
        detailLabel.font = Fonts.appBoldFontWith(size: 20)
        boxLabel.font = Fonts.appBoldFontWith(size: 17)
        detailBox.font = Fonts.appRegularFontWith(size: 17)
        
    }
    
}
