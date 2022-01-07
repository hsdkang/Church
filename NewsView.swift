//
//  NewsView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct NewsView: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Text("오직 은혜")
            Text("(업데이트 예정입니다.)")
            Button(action: {
                withAnimation(.easeOut(duration: 0.3)){
                    self.viewRouter.currentPage = "MenuView"
                }
            }) { Text("메뉴로 이동") }
        }.navigationTitle("교회소식")
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsView(viewRouter: ViewRouter())
        }
    }
}
