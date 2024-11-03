//
//  MainViewControlelr.swift
//  Thesisfy
//
//  Created by KKM on 10/27/24.
//

import SwiftUI

struct MainViewController: View {
    var body: some View {
        VStack(spacing: 0) { // spacing 제거
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
            
            ScrollView(showsIndicators: false) {
                // ScrollView Content
                
            }
            
            TabBarView() // 바로 아래 붙도록 수정
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom) // Safe Area 무시
        .navigationBarBackButtonHidden()
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
