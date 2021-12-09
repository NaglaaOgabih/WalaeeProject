//
//  SignInViewController.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 06/12/2021.
//

import UIKit
import PaddingLabel
class SignInViewController: UIViewController {
    
    @IBOutlet weak var logInLabel: UILabel!
    @IBOutlet weak var logInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passWordTxtField: UITextField!
    @IBOutlet weak var facebookLabel: UILabel!
    
    @IBOutlet weak var googleLabel: UILabel!
    //    @IBOutlet weak var facebookBtn: UIButton!
//    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var forgetPassBtn: UIButton!
    @IBOutlet weak var notMemberLabel: UILabel!
    @IBOutlet weak var orSignUpLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fontsEdit()
    }
    
    @IBAction func forgetPassBtnPressed(_ sender: Any) {
    }
    @IBAction func logInBtnPressed(_ sender: Any) {
    }
    @IBAction func signUpBtnPressed(_ sender: Any) {
    }
    
    @IBAction func facebookBtnPressed(_ sender: Any) {

    }
    
    @IBAction func googleBtnPressed(_ sender: Any) {
    }
    func fontsEdit(){

        logInLabel.font = Fonts.appBoldFontWith(size: 35)
        emailTxtField.font = Fonts.appLightFontWith(size: 20)
        passWordTxtField.font = Fonts.appLightFontWith(size: 20)
        forgetPassBtn.titleLabel?.font = Fonts.appRegularFontWith(size: 20)
        logInBtn.titleLabel?.font = Fonts.appRegularFontWith(size: 20)
        notMemberLabel.font = Fonts.appRegularFontWith(size: 19)
        signUpBtn.titleLabel?.font = Fonts.appRegularFontWith(size: 19)
        orSignUpLabel.font = Fonts.appRegularFontWith(size: 17)
        googleLabel.font = Fonts.appRegularFontWith(size: 20)
        facebookLabel.font = Fonts.appRegularFontWith(size: 20)
        }
    
}
