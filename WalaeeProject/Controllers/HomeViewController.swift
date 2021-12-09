//
//  HomeViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 07/12/2021.
//


//    Cairo-Regular
//    Cairo-ExtraBold
//    "Cairo-Light"

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bestOffersLabel: UILabel!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var suggestedOffersLabel: UILabel!
    @IBOutlet weak var searchTxtField: UITextField!
    @IBOutlet weak var bestOffersCollectionView: UICollectionView!
    @IBOutlet weak var suggstedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bestOffersCollectionView.reloadData()
        suggstedCollectionView.reloadData()
        fontsEdit()
//        navigationController?.setNavigationBarHidden(true, animated: false )
        bestOffersCollectionView.semanticContentAttribute = .forceRightToLeft
        suggstedCollectionView.semanticContentAttribute = .forceRightToLeft
        self.tabBarController?.tabBar.isHidden = false
        
        
    }
    
    @IBAction func profileBtnPressed(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func fontsEdit(){
        titleLabel.font = Fonts.appBoldFontWith(size: 23)
        bestOffersLabel.font =  Fonts.appBoldFontWith(size: 20)
        suggestedOffersLabel.font = Fonts.appBoldFontWith(size: 20)
        moreBtn.titleLabel?.font  = Fonts.appRegularFontWith(size: 20)
        searchTxtField.font = Fonts.appRegularFontWith(size: 20)
    }
    
    @IBAction func searchBtnPressed(_ sender: Any) {
        searchTxtField.text = ""
    }
    
}
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == bestOffersCollectionView {
            return 3
        }else{
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bestOffersCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! bestOffersCollectionViewCell
            cell.hintLabel.text = "50% خصم"
            cell.detailLabel.text = "خصم 50% لفترة محدودة!"
            cell.companyName.text = "بانجووود"
            cell.imgView.image = UIImage(named: "Rectangle9")
            cell.imgView.contentMode = .scaleToFill
            
            return cell
        }
        else{
            let suggestedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "suggestedCell", for: indexPath) as! SuggestedOffersCollectionViewCell
            suggestedCell.companyName.text = "سوق"
            suggestedCell.hintLabel.text = "20% خصم"
            suggestedCell.descriptionLabel.text = "رمز ترويجي + أحصل على 4 نقاط"
            return suggestedCell
            
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        if collectionView == bestOffersCollectionView {
            
            return CGSize(width: 227, height: 156)
        }else{
            return CGSize(width: width * 0.5 - 8, height: 176)
            
        }
        
    }
    
}



