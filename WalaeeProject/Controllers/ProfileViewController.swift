//
//  ProfileViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 08/12/2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var offersDate: UILabel!
    @IBOutlet weak var offersNum: UILabel!
    var profileImgArray : [UIImage] = [
        UIImage(named: "cashBack4")!,
        UIImage(named: "cashBack2")!,
        UIImage(named: "Jumia")!,
        UIImage(named: "cashBack3")!,
        UIImage(named: "souq")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
        navigationController?.setNavigationBarHidden(true, animated: false )
        self.tabBarController?.tabBar.isHidden = true
        fonts()
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func fonts(){
        profileLabel.font = Fonts.appBoldFontWith(size: 26)
        userName.font = Fonts.appRegularFontWith(size: 24)
        userEmail.font = Fonts.appRegularFontWith(size: 19)
        offersDate.font = Fonts.appBoldFontWith(size: 26)
        offersNum.font = Fonts.appBoldFontWith(size: 26)
    }
    
    
    
}
extension ProfileViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        profileImgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileCell", for: indexPath) as! ProfileCollectionViewCell
        cell.hintLabel.text = "15% خصم"
        cell.companyName.text = "أمازون"
        cell.descriptionLabel.text = "خصم 15% على جميع منتجات أمازون"
        cell.imgView.image = profileImgArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        if indexPath.item == 0 {
            return CGSize(width: width , height: 188)
            
        }else{
            return CGSize(width: width * 0.5 - 8 , height: 188)
        }
    }
}

