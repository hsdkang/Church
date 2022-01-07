//
//  IntroView04.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView04: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("▶︎ 상 담")
                .font(.system(size: 25)).bold()
            Text("")
            Text("저희 모든 사역자들은 기가 막힐 웅덩이에서 건져주신 하나님의 은혜에 감사하는 마음과 아버지를 떠나 방탕하다 돌아온 탕자의 속죄하는 마음과 먼저 나온 자들로서 남아있는 자들에 대해 빚진 자의 심정으로 한 영혼의 회심을 위해 최선을 다하고 있습니다.")
        }.padding(20)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.blue)
            .ignoresSafeArea(edges: .all)
    }
}

struct IntroView04_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView04(viewRouter: ViewRouter())
        }
    }
}
