//
//  IntroView02.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView02: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("▶︎ 교회의 비전")
                .font(.system(size: 25)).bold()
            Text("")

            HStack(alignment: .firstTextBaseline, spacing: 1){
                Text("1. ").bold()
                Text("오직 하나님께 영광, 오직 말씀, 오직 믿음, 오직 하나님의 절대주권에 기초하여 성경이 하나님의 절대적 완전한 계시임을 믿는 교회")
            }
            HStack(alignment: .firstTextBaseline, spacing: 1){
                Text("2. ").bold()
                Text("성경과 신앙생활의 전 영역에서 비성경적인 요소들을 과감히 청산하고 만인 제상장의 터 위에 성도들이 중심되어 끊임없이 개혁을 추구하는 교회")
            }
            HStack(alignment: .firstTextBaseline, spacing: 1){
                Text("3. ").bold()
                Text("바른 복음을 훼손하는 종교다원주의, 자유주의 신학, 기복신앙과 물질주의, 성공주의, 교회 세속화를 경계하며 정통개혁주의 신학의 터 위에 세운 교회")
            }
        }.padding(18)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.blue)
            .ignoresSafeArea(edges: .all)
    }
}

struct IntroView02_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView02(viewRouter: ViewRouter())
        }
    }
}
