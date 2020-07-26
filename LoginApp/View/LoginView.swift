//
//  LoginView.swift
//  LoginApp
//
//  Created by Akshay Yerneni on 25/07/20.
//  Copyright © 2020 Akshay Yerneni. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    @State var authDidSucceed: Bool = false
    @State var authDidFail: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                WelcomeText()
                UserImage()
                UsernameTextField(userName: $userName)
                EmailTextField(email: $email)
                PasswordSecureField(password: $password)
                
                if authDidFail {
                    
                }
                
                Button(action: {
                    
                }) {
                    LoginButtonContent()
                }
            }.padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, AppConstants.setPadding(.small))
    }
}

struct UserImage: View {
    var body: some View {
        Image("userImage")
            .resizable()
            .frame(width: AppConstants.userImageWidth, height: AppConstants.userImageHeight)
            .cornerRadius(AppConstants.userImageCornerRadius)
            .clipped()
            .padding(.bottom, AppConstants.setPadding(.large))
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220.0, height: 60.0)
            .background(Color.black)
            .cornerRadius(AppConstants.defaultCornerRadius*4)
    }
}

struct UsernameTextField: View {
    
    @Binding var userName: String
    
    var body: some View {
        TextField(StringConstants.userNamePlaceholder, text: $userName)
            .padding()
            .background(AppColors.lightGrayColor)
            .padding(.bottom, AppConstants.setPadding(.small))
    }
}

struct EmailTextField: View {
    
    @Binding var email: String
    
    var body: some View {
        TextField(StringConstants.emailPlaceholder, text: $email)
            .padding()
            .background(AppColors.lightGrayColor)
            .padding(.bottom, AppConstants.setPadding(.small))
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField(StringConstants.passwordPlaceholder, text: $password)
            .padding()
            .background(AppColors.lightGrayColor)
            .padding(.bottom, AppConstants.setPadding(.small))
    }
}
