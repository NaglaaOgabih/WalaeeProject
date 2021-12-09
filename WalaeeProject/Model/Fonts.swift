//
//  Fonts.swift
//  WalaeeProject
//
//  Created by Naglaa Ogabih on 09/12/2021.
//

import Foundation
import UIKit

struct Fonts{
    static func appLightFontWith( size:CGFloat ) -> UIFont{
           return  UIFont(name: "Cairo-Light", size: size)!
       }
    static func appRegularFontWith( size:CGFloat ) -> UIFont{
            return  UIFont(name: "Cairo-Regular", size: size)!
        }

     static func appBoldFontWith( size:CGFloat ) -> UIFont{
            return  UIFont(name: "Cairo-ExtraBold", size: size)!
        }
}
