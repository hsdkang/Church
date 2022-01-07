//
//  CommunityView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct CommunityView: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Text("오직 그리스도")
            Text("(업데이트 예정입니다.)")
            Button(action: {
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "MenuView"
                }
            }) { Text("메뉴로 이동") }
        }.navigationTitle("목장소식")
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CommunityView(viewRouter: ViewRouter())
        }
    }
}
