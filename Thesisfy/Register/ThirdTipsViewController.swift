//
//  ThirdTipsViewController.swift
//  Thesisfy
//
//  Created by KKM on 10/27/24.
//

import SwiftUI

struct ThirdTipsViewController: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var showMainView = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. Use the search bar to find the most relevant thesisfy entries.")
                    Text("2. Use the filter bar to find the most relevant thesisfy entries.")
                    Text("3. Use the sort bar to find the most relevant thesisfy entries.")
                }
                .padding(.vertical, 16)
                
                Spacer()

                Button {
                    presentationMode.wrappedValue.dismiss() // 모달을 닫기
                    showMainView = true // MainView로 이동
                } label: {
                    NextButtonView(title: "Go to Thesisfy")
                }
                .fullScreenCover(isPresented: $showMainView) {
                    MainViewController()
                }
            }
            .padding(.horizontal, 24)
            .navigationTitle(Text("Third Tips"))
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ThirdTipsViewController()
}

