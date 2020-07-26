//
//  File.swift
//  LoginApp
//
//  Created by Akshay Yerneni on 25/07/20.
//  Copyright © 2020 Akshay Yerneni. All rights reserved.
//

import Foundation
import SwiftUI

struct AppConstants {
    
    static let userImageHeight: CGFloat = 150.0
    static let userImageWidth: CGFloat = 150.0
    static let userImageCornerRadius: CGFloat = 75.0
    static let defaultCornerRadius: CGFloat = 7.5
    
    static func setPadding(_ type: BottomPadding) -> CGFloat {
        return type.rawValue
    }
}

struct StringConstants {
    
    static let userNamePlaceholder: String = "Username"
    static let emailPlaceholder: String = "Email"
    static let passwordPlaceholder = "Password"
    
    static let userNameCheck: String = "akshay"
    static let emailCheck: String = "akshay.yerneni@hotmail.com"
    static let passwordCheck: String = "123456"
    static let errorMessage: String = "Username/Email/Password incorrect"
    static let loginSuccessMessage: String = "Login Sucessful!!"
}

struct AppColors {
    
    static let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
}
