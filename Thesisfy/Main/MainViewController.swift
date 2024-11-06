//
//  MainViewControlelr.swift
//  Thesisfy
//
//  Created by KKM on 10/27/24.
//

import SwiftUI

struct MainViewController: View {
    @State private var messages: [String] = ["안녕하세요!", "논문 추천 서비스에 오신 걸 환영합니다!"] // 초기 메시지
    @State private var newMessage = ""
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("sideMenu")
                    .resizable()
                    .frame(width: 48, height: 48)
                
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Spacer()
                
                Image("bell")
                    .resizable()
                    .frame(width: 48, height: 48)
            }
            .padding(.horizontal, 24)
            
            Divider()
            
            // MARK: 채팅 내역
            ScrollView {
                LazyVStack(spacing: 8) {
                    ForEach(messages, id: \.self) { message in
                        HStack {
                            if message.contains("안녕하세요") { // 시스템 메시지 구분
                                Spacer()
                                Text(message)
                                    .font(Font.custom("Pretendard", size: Constants.fontSizeXs)
                                            .weight(Constants.fontWeightMedium))
                                    .foregroundColor(Constants.GrayColorWhite)
                                    .padding(12)
                                    .background(Constants.PrimaryColorPrimary500)
                                    .cornerRadius(10)
                                    .fixedSize(horizontal: false, vertical: true) // 유동적 크기 설정
                                    .padding(.horizontal)
                            } else { // 사용자 메시지
                                Text(message)
                                    .font(Font.custom("Pretendard", size: Constants.fontSizeXs)
                                            .weight(Constants.fontWeightMedium))
                                    .foregroundColor(Constants.GrayColorGray800)                                    .padding(12)
                                    .background(Constants.GrayColorGray50)
                                    .cornerRadius(10)
                                    .fixedSize(horizontal: false, vertical: true) // 유동적 크기 설정
                                    .padding(.horizontal)
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.vertical, 24)
            }
            
            // MARK: 채팅 전송 필드
            HStack {
                HStack {
                    ZStack(alignment: .leading) {
                        if newMessage.isEmpty {
                            Text("궁금한 내용을 검색해 보세요")
                                .font(Font.custom("Pretendard", size: Constants.fontSizeS).weight(Constants.fontWeightMedium))
                                .foregroundColor(Constants.GrayColorGray400)
                        }
                        
                        TextField("", text: $newMessage)
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.clear, lineWidth: 1)
                            )
                            .frame(height: 48)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        sendMessage()
                    }) {
                        Image("send")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, Constants.fontSizeS)
                .frame(height: 48, alignment: .center)
                .background(Constants.GrayColorGray50)
                .cornerRadius(6)
            }
            .padding(24)

            
            // 탭바 뷰
            TabBarView()
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .bottom)
        }
            
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden()
    }
    
    // 메시지 전송 함수
    func sendMessage() {
        guard !newMessage.isEmpty else { return }
        messages.append(newMessage)
        newMessage = ""
    }
}

struct TabBarView: View {
    @State private var selectedTab = "home" // State variable for tracking the selected tab

    var body: some View {
        HStack(alignment: .center) {
//            Spacer() // Adds space before the first item

            // Find Tab
            Button(action: {
                selectedTab = "find"
            }) {
                Image(selectedTab == "find" ? "findSelected" : "find")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .padding(2)
            .frame(height: 80, alignment: .center)
            
            Spacer() // Adds space between items
            
            // Home Tab
            Button(action: {
                selectedTab = "home"
            }) {
                Image(selectedTab == "home" ? "homeSelected" : "home")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .padding(2)
            .frame(height: 80, alignment: .center)
            
            Spacer() // Adds space between items
            
            // MyPage Tab
            Button(action: {
                selectedTab = "myPage"
            }) {
                Image(selectedTab == "myPage" ? "myPageSelected" : "myPage")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .padding(2)
            .frame(height: 80, alignment: .center)

//            Spacer() // Adds space after the last item
        }
        .padding(.bottom, Constants.fontSizeXl)
        .padding(.top, Constants.fontSizeXl)
        .padding(.horizontal, 56)
        .frame(height: 100)
        .background(Constants.GrayColorWhite)
        .cornerRadius(Constants.fontSizeXxxs)
        .shadow(color: .black.opacity(0.15), radius: 3.5, x: 0, y: 0)
    }
}

#Preview {
    MainViewController()
}
