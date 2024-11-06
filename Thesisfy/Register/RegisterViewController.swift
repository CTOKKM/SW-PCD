//
//  RegisterViewController.swift
//  Thesisfy
//
//  Created by KKM on 10/20/24.
//

import SwiftUI

struct RegisterViewController: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
<<<<<<< HEAD
=======
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var nickname: String = ""
    
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    var body: some View {
        NavigationView {
            VStack {
                // Navigation Bar
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.black)
                    }
                    
                    Spacer()
                    
                    Text("회원가입")
                        .font(.system(size: Constants.fontSizeXl, weight: Constants.fontWeightSemibold))
                        .foregroundColor(Constants.GrayColorGray900)
                    
                    Spacer()
                    
                    Text("    ")
                }
                
                // Input Views
<<<<<<< HEAD
                SetEmailView().padding(.top, 24)
                SetPasswordView().padding(.top, 28)
                SetPasswordConfirmView().padding(.top, 28)
                SetNickNameView().padding(.top, 28)
                SetJobView().padding(.top, 28)
=======
                SetEmailView(email: $email)
                    .padding(.top, 24)
                
                SetPasswordView(password: $password)
                    .padding(.top, 28)
                
                SetPasswordConfirmView(password: $confirmPassword)
                    .padding(.top, 28)
                
                SetNickNameView(nickname: $nickname)
                    .padding(.top, 28)
                
                SetJobView()
                    .padding(.top, 28)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                
                Spacer()
                
                NavigationLink(destination: TermsAgreementViewController()) {
<<<<<<< HEAD
                    NextButtonView()   
=======
                    NextButtonView()
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                }
            }
            .padding(.horizontal, 24)
            
        }
        .navigationBarBackButtonHidden()
    }
}

struct SetPasswordConfirmView: View {
<<<<<<< HEAD
    @State private var password: String = ""
=======
    @Binding var password: String
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("비밀번호 확인")
                    .font(.system(size: Constants.fontSizeL, weight: Constants.fontWeightSemibold))
                Spacer()
            }
            
<<<<<<< HEAD
            TextField("비밀번호를 한 번 더 입력해 주세요", text: $password)
=======
            SecureField("비밀번호를 한 번 더 입력해 주세요", text: $password)
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
                .padding(.horizontal, Constants.fontSizeXs)
                .padding(.vertical, Constants.fontSizeS)
                .frame(height: 44)
                .background(Constants.GrayColorWhite)
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Constants.BorderColorBorder2, lineWidth: 1)
                )
        }
    }
}

struct SetNickNameView: View {
<<<<<<< HEAD
    @State private var nickname: String = ""
=======
    @Binding var nickname: String
>>>>>>> dfcb635 ([feat] 로그인&회원가입&홈화면 작업중)
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("닉네임")
                    .font(.system(size: Constants.fontSizeL, weight: Constants.fontWeightSemibold))
                Spacer()
            }
            
            TextField("닉네임을 입력해 주세요", text: $nickname)
                .padding(.horizontal, Constants.fontSizeXs)
                .padding(.vertical, Constants.fontSizeS)
                .frame(height: 44)
                .background(Constants.GrayColorWhite)
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Constants.BorderColorBorder2, lineWidth: 1)
                )
        }
    }
}

struct SetJobView: View {
    @State private var selectedJob = "대학생"
    let jobOptions = ["대학생", "대학원생", "교수", "교직원", "학생", "기타"]
    
    var body: some View {
        VStack {
            HStack {
                Text("직업")
                    .font(.system(size: Constants.fontSizeL, weight: Constants.fontWeightSemibold))
                Spacer()
            }
            
            Picker("직업을 선택해주세요", selection: $selectedJob) {
                ForEach(jobOptions, id: \.self) { job in
                    Text(job)
                }
            }
            .pickerStyle(DefaultPickerStyle())
            .background(Constants.GrayColorWhite)
            .cornerRadius(6)
        }
    }
}

struct NextButtonView: View {
    var title: String = "다음으로" // 기본값 설정

    var body: some View {
        Text(title)
            .font(.system(size: Constants.fontSizeM, weight: Constants.fontWeightBold))
            .foregroundColor(Constants.GrayColorWhite)
            .padding(.horizontal, Constants.fontSizeXs)
            .padding(.vertical, Constants.fontSizeM)
            .frame(maxWidth: .infinity)
            .background(Constants.PrimaryColorPrimary500)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Constants.BorderColorBorder1, lineWidth: 1)
            )
    }
}

#Preview {
    RegisterViewController()
}
