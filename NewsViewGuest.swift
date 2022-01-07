//
//  NewsViewGuest.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct NewsViewGuest: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Text("오직 은혜")
            Text("(업데이트 예정입니다.)")
            Button(action: {
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "LoginView"
                }
            }) { Text("로그인으로 이동") }
        }.navigationTitle("교회소식")
    }
}

struct NewsViewGuest_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsViewGuest(viewRouter: ViewRouter())
        }
    }
}
