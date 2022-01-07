//
//  EventViewGuest.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct EventViewGuest: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Text("오직 말씀")
            Text("(업데이트 예정입니다.)")
            Button(action: {
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "LoginView"
                }
            }) { Text("로그인으로 이동") }
        }.navigationTitle("교회행사")
    }
}

struct EventViewGuest_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EventViewGuest(viewRouter: ViewRouter())
        }
    }
}
