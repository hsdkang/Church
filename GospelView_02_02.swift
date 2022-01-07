//
//  GospelView_02_02.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseDatabase

struct GospelView_02_02: View {
    
    @ ObservedObject var viewRouter: ViewRouter
    @ StateObject var videosFactory = VideosFactory_02_02()
    
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Spacer()
                    Button("목사"){
                        self.viewRouter.currentPage = "GospelView_01_01"
                    }.frame(width: 100, height: 30)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 18, weight: .bold))
                    Button("전도사") {
                        self.viewRouter.currentPage = "GospelView_02_01"
                    }.frame(width: 120, height: 30)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 18, weight: .bold))
                    Button("기타") {
                        self.viewRouter.currentPage = "GospelView_03_01"
                    }.frame(width: 60, height: 30)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }.navigationBarHidden(true).padding(5)
                
                HStack{
                    Spacer()
                    Button("주일 오후예배"){
                        self.viewRouter.currentPage = "GospelView_02_01"
                    }.frame(width: 120, height: 30)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 18, weight: .bold))
                    Button("특강") {
                        self.viewRouter.currentPage = "GospelView_02_02"
                    }.frame(width: 60, height: 30)
                        .background(Color.pink)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }.navigationBarHidden(true).padding(5)
            }
            
            VStack{
                List {
                    ForEach(videosFactory.videos) { video in
                        VideoCell(video: video)
                    }
                }
            }
            Button(action: {
                self.viewRouter.currentPage = "MenuView"
            }) { Text("메뉴로 이동") }.padding(10)
        }
        .onAppear {
            UITableView.appearance().backgroundColor = .white
        }
    }
}

struct GospelView_02_02_Previews: PreviewProvider {
    static var previews: some View {
        GospelView_02_02(viewRouter: ViewRouter())
    }
}
