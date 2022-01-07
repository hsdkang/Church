//
//  IntroView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView: View {
    @ ObservedObject var viewRouter: ViewRouter
    @ State var isPresented = false
    
    var body: some View {
        ZStack{
            VStack{
                Form{
                    Button("소 속"){
                        withAnimation {
                            self.isPresented.toggle()
                        }
                    }.fullScreenCover(isPresented: $isPresented, onDismiss: didDismiss) {
                        VStack {
                            IntroView01(viewRouter: ViewRouter())
                        }
                        .onTapGesture {
                            self.isPresented.toggle()
                        }
                    }
                    Button("비 전"){
                        withAnimation {
                            self.isPresented.toggle()
                        }
                    }.fullScreenCover(isPresented: $isPresented, onDismiss: didDismiss) {
                        VStack {
                            IntroView02(viewRouter: ViewRouter())
                        }
                        .onTapGesture {
                            self.isPresented.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .ignoresSafeArea(edges: .all)
                    }
                    Button("5대 사역"){
                        withAnimation {
                            self.isPresented.toggle()
                        }
                    }.fullScreenCover(isPresented: $isPresented, onDismiss: didDismiss) {
                        VStack {
                            IntroView03(viewRouter: ViewRouter())
                        }
                        .onTapGesture {
                            self.isPresented.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .ignoresSafeArea(edges: .all)
                    }
                    Button("상 담"){
                        withAnimation {
                            self.isPresented.toggle()
                        }
                    }.fullScreenCover(isPresented: $isPresented, onDismiss: didDismiss) {
                        VStack {
                            IntroView04(viewRouter: ViewRouter())
                        }
                        .onTapGesture {
                            self.isPresented.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .ignoresSafeArea(edges: .all)
                    }
                    Button("약 력"){
                        withAnimation {
                            self.isPresented.toggle()
                        }
                    }.fullScreenCover(isPresented: $isPresented, onDismiss: didDismiss) {
                        VStack {
                            IntroView05(viewRouter: ViewRouter())
                        }
                        .onTapGesture {
                            self.isPresented.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .ignoresSafeArea(edges: .all)
                    }
                }
                .onAppear {
                    UITableView.appearance().backgroundColor = .white
                }
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)){
                        self.viewRouter.currentPage = "MenuView"
                    }
                }) { Text("메뉴로 이동") }
                Spacer()
            }.navigationBarTitle("교회소개")
        }
    }
    func didDismiss() {
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView(viewRouter: ViewRouter())
        }
    }
}
