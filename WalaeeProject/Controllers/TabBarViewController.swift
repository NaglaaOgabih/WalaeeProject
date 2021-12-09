//
//  TabBarViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 07/12/2021.
//

import UIKit
import SpriteKit
import SwifterSwift

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    @IBOutlet weak var mainTabBar: UITabBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupTabBarButtons()
        setupMiddleTabBarButton()


    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tabBar.frame = CGRect(x: 20, y: view.frame.maxY - 108, width: tabBar.frame.size.width - 40 , height: 77)
        tabBar.backgroundColor = UIColor.white
    }
    func setupMiddleTabBarButton(){
        let middleBtn = UIButton(frame: CGRect(x: self.view.bounds.width / 2 - 55 , y: -30, width: 66, height: 66))

        middleBtn.backgroundColor  = UIColor(red: 255, green: 64, blue: 77)
        middleBtn.setImage(UIImage(named: "Scan"), for: .normal)
        middleBtn.layer.shadowColor = UIColor(red: 255, green: 64, blue: 77)?.cgColor
        middleBtn.layer.shadowOpacity = 0.1
        middleBtn.layer.shadowOffset = CGSize(width: 7, height: 7)
        middleBtn.layer.cornerRadius = 20
        middleBtn.addTarget(self, action: #selector(middleBtnAction), for: .touchUpInside)
        middleBtn.subviews.first?.contentMode = .scaleAspectFit
        self.view.layoutIfNeeded()
        self.tabBar.addSubview(middleBtn)
        
    }
    @objc func middleBtnAction(sender: UIButton){
        self.selectedIndex = 2
    }
    func setupTabBarButtons(){
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.lightGray], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor(red: 255, green: 64, blue: 77) ?? UIColor.black], for: .selected)
        mainTabBar.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "Cairo-Regular", size: 15)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        tabBar.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        
        let selectedImg1 = UIImage(named: "notificationOn")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImg1 = UIImage(named: "notificationBar")?.withRenderingMode(.alwaysOriginal)
        tabBarItem = self.tabBar.items![0]
        tabBarItem.image = deSelectedImg1
        tabBarItem.selectedImage = selectedImg1
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -10)
        tabBarItem.standardAppearance?.backgroundColor = UIColor(red: 255, green: 64, blue: 77, alpha: 0.7)
        
        let selectedImg2 = UIImage(named: "placeholderOn")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImg2 = UIImage(named: "placeholderBar")?.withRenderingMode(.alwaysOriginal)
        tabBarItem = self.tabBar.items![1]
        tabBarItem.image = deSelectedImg2
        tabBarItem.selectedImage = selectedImg2
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -10)
        tabBarItem.standardAppearance?.backgroundColor = UIColor(red: 255, green: 64, blue: 77, alpha: 0.7)


        let selectedImg3 = UIImage(named: "discountBarOn")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImg3 = UIImage(named: "discountBar")?.withRenderingMode(.alwaysOriginal)
        tabBarItem = self.tabBar.items![3]
        tabBarItem.image = deSelectedImg3
        tabBarItem.selectedImage = selectedImg3
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -10)
        tabBarItem.standardAppearance?.backgroundColor = UIColor(red: 255, green: 64, blue: 77, alpha: 0.7)

        
        let selectedImg4 = UIImage(named: "homeBarOn")?.withRenderingMode(.alwaysOriginal)
        let deSelectedImg4 = UIImage(named: "homeBar")?.withRenderingMode(.alwaysOriginal)
        tabBarItem = self.tabBar.items![4]
        tabBarItem.image = deSelectedImg4
        tabBarItem.selectedImage = selectedImg4
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -10)
        tabBarItem.standardAppearance?.backgroundColor = UIColor(red: 255, green: 64, blue: 77, alpha: 0.7)
        self.selectedIndex = 4
    }

}
