//
//  LoginViewController.swift
//  Thesisfy
//
//  Created by KKM on 10/20/24.
//

import SwiftUI

struct LoginViewController: View {
<<<<<<< HEAD
=======
    @State private var email: String = ""
    @State private var password: String = ""
    
    var isLoginEnabled: Bool {
        // 이메일과 비밀번호가 모두 비어있지 않으면 true
        return !email.isEmpty && !password.isEmpty
    }
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.top, 60)
                
<<<<<<< HEAD
                SetEmailView()
                    .padding(.top, 70)
                SetPasswordView()
                    .padding(.top, 28)
                
                
                LoginButtonView()
=======
                SetEmailView(email: $email)
                    .padding(.top, 70)
                SetPasswordView(password: $password)
                    .padding(.top, 28)
                
                LoginButtonView(isEnabled: isLoginEnabled)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                    .padding(.top, 72)
                
                NavigationLink(destination: RegisterViewController()) {
                    HStack {
                        Text("지금 바로 계정을 만들어 보세요")
                            .font(.system(size: Constants.fontSizeXs, weight: Constants.fontWeightRegular))
                            .foregroundStyle(Constants.GrayColorGray400)
                        
                        Text("회원가입")
                            .font(.system(size: Constants.fontSizeS, weight: Constants.fontWeightRegular))
                            .foregroundStyle(Constants.GrayColorGray400)
                    }
                    .padding(.top, 36)
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    LoginViewController()
}

struct SetEmailView: View {
<<<<<<< HEAD
    @State private var email: String = ""
    
    var body: some View {
        VStack(spacing: 8) {
            // 이메일 텍스트 필드
=======
    @Binding var email: String
    
    var body: some View {
        VStack(spacing: 8) {
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
            HStack {
                Text("이메일")
                    .font(.system(size: Constants.fontSizeL, weight: Constants.fontWeightSemibold))
                
                Spacer()
            }
            
            HStack(alignment: .center, spacing: Constants.fontSizeXxxs) {
                TextField("이메일을 입력해 주세요", text: $email)
                    .font(.system(size: Constants.fontSizeS, weight: Constants.fontWeightMedium))
                    .padding(.horizontal, Constants.fontSizeXs)
                    .padding(.vertical, Constants.fontSizeS)
                    .frame(height: 44, alignment: .leading)
                    .background(Constants.GrayColorWhite)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .inset(by: 0.5)
                            .stroke(Constants.BorderColorBorder2, lineWidth: 1)
                    )
            }
        }
    }
}

struct SetPasswordView: View {
<<<<<<< HEAD
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 8) {
            // 비밀번호 텍스트 필드
=======
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 8) {
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
            HStack {
                Text("비밀번호")
                    .font(.system(size: Constants.fontSizeL, weight: Constants.fontWeightSemibold))
                
                Spacer()
            }
            
            HStack(alignment: .center, spacing: Constants.fontSizeXxxs) {
<<<<<<< HEAD
                TextField("비밀번호를 입력해 주세요", text: $password)
=======
                SecureField("비밀번호를 입력해 주세요", text: $password)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                    .padding(.horizontal, Constants.fontSizeXs)
                    .padding(.vertical, Constants.fontSizeS)
                    .frame(height: 44, alignment: .leading)
                    .background(Constants.GrayColorWhite)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .inset(by: 0.5)
                            .stroke(Constants.BorderColorBorder2, lineWidth: 1)
                    )
            }
        }
    }
}

struct LoginButtonView: View {
<<<<<<< HEAD
=======
    var isEnabled: Bool
    
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    var body: some View {
        Button(action: {
            print("로그인 버튼 클릭")
        }) {
            NavigationLink(destination: MainViewController()) {
                HStack(alignment: .center, spacing: Constants.fontSizeXxxs) {
                    Text("로그인")
                        .font(.system(size: Constants.fontSizeM, weight: Constants.fontWeightBold))
<<<<<<< HEAD
                        .foregroundColor(Constants.GrayColorWhite)
=======
                        .foregroundColor(isEnabled ? Constants.GrayColorWhite : Constants.GrayColorGray400)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                }
                .padding(.horizontal, Constants.fontSizeXs)
                .padding(.vertical, Constants.fontSizeM)
                .frame(maxWidth: .infinity, alignment: .center)
<<<<<<< HEAD
                .background(Constants.PrimaryColorPrimary500)
=======
                .background(isEnabled ? Constants.PrimaryColorPrimary500 : Constants.GrayColorGray100)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.5)
                        .stroke(Constants.BorderColorBorder1, lineWidth: 1)
                )
            }
        }
<<<<<<< HEAD
=======
        .disabled(!isEnabled) // 버튼 비활성화 상태
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    }
}
