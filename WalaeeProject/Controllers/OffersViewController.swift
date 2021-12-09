//
//  OffersViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 07/12/2021.
//

import UIKit

class OffersViewController: UIViewController {
    @IBOutlet weak var offersCollectionView: UICollectionView!
    @IBOutlet weak var cashBackCollectionView: UICollectionView!
    @IBOutlet weak var offersLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    
    var offersImgArray : [UIImage] = [
        UIImage(named: "offers4")!,
        UIImage(named: "offers3")!,
        UIImage(named: "offers2")!,
        UIImage(named: "offers1")!
    ]
    var cashImgArray : [UIImage] = [
        UIImage(named: "cashBack1")!,
        UIImage(named: "cashBack2")!,
        UIImage(named: "cashBack3")!,
        UIImage(named: "cashBack4")!
    ]
    var offersLabelArray = ["جيم","تسوق","مولات","كاش باك"]

    override func viewDidLoad() {
        super.viewDidLoad()
        offersCollectionView.reloadData()
        cashBackCollectionView.reloadData()
        offersCollectionView.semanticContentAttribute = .forceRightToLeft
        offersLabel.font = Fonts.appBoldFontWith(size: 32)
        cashLabel.font = Fonts.appBoldFontWith(size: 29)    }
    
  
}
extension OffersViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == offersCollectionView {
            return offersImgArray.count
        }else{
            return cashImgArray.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == offersCollectionView {
        let offerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "offerCell", for: indexPath) as! OffersCollectionViewCell
            offerCell.imgView.image = offersImgArray[indexPath.row]
            offerCell.numLabel.text = "15"
            offerCell.cashBackLabel.text = offersLabelArray[indexPath.row]
        return offerCell
        }else{
            let cashCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cashCell", for: indexPath) as! CashBackCollectionViewCell
            cashCell.hintLabel.text = "30% خصم"
            cashCell.companyName.text = "علي إكسبريس"
            cashCell.descriptionLabel.text = "خصم 15% على جميع منتجات إكسبريس"
            cashCell.imgView.image = cashImgArray[indexPath.row]
            return cashCell
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        if collectionView == offersCollectionView {
         
        return CGSize(width: 95, height: 142)
        }else{
           
           if indexPath.item % 3 == 0 {
               
               return CGSize(width: width , height: 188)
           }else{
               return CGSize(width: width * 0.5 - 8 , height: 188)
           }
        }
    }
}
