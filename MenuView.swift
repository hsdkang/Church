//
//  MenuView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        Spacer()
        VStack{
            Button ("교회소개"){
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "IntroView"
                }
            }.font(.system(size: 20))
                .frame(width: 250, height: 70, alignment: .center)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 0.01))
                .shadow(color: Color.blue.opacity(0.4), radius: 20, x: 0, y: 15)
                .padding(5)
            
            Button ("말씀"){
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "GospelView_01_01"
                }
            }.font(.system(size: 20))
                .frame(width: 250, height: 70, alignment: .center)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 0.01))
                .shadow(color: Color.red.opacity(0.4), radius: 20, x: 0, y: 15)
                .padding(5)
            
            Button ("교회소식"){
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "NewsView"
                }
            }.font(.system(size: 20))
                .frame(width: 250, height: 70, alignment: .center)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 0.01))
                .shadow(color: Color.green.opacity(0.4), radius: 20, x: 0, y: 15)
                .padding(5)
            
            Button ("교회행사"){
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "EventView"
                }
            }.font(.system(size: 20))
                .frame(width: 250, height: 70, alignment: .center)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.yellow, lineWidth: 0.01))
                .shadow(color: Color.yellow.opacity(0.4), radius: 20, x: 0, y: 15)
                .padding(5)
            
            Button ("목장소식"){
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "CommunityView"
                }
            }.font(.system(size: 20))
                .frame(width: 250, height: 70, alignment: .center)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 0.01))
                .shadow(color: Color.purple.opacity(0.4), radius: 20, x: 0, y: 15)
                .padding(5)
        }.navigationTitle("메뉴")
        Spacer()
        Spacer()
        Spacer()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MenuView(viewRouter: ViewRouter())
        }
    }
}
