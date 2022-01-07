//
//  IntroView03.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView03: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            
            VStack(alignment: .leading, spacing: 10){
                Text("▶︎ 교회 5대 사역")
                    .font(.system(size: 25)).bold()
                Text("")
                VStack(alignment: .leading, spacing: 5){
                    Text("1. 청년사역")
                        .font(.system(size: 20)).bold()
                    Text("각종 이단에서 회심한 청년들을 중심으로 다음 세대를 이끌어갈 청년들의 비전과 신앙을 다시 세우는 청년 사역")
                }
                VStack(alignment: .leading, spacing: 5){
                    Text("2. 복음사역")
                        .font(.system(size: 20)).bold()
                    Text("기존 교회의 부패와 부조리한 제반 문제로 인해 상처받은 영혼, 갈급함으로 유리방황하는 영혼들의 신앙회복을 위한 복음 사역")
                }
                VStack(alignment: .leading, spacing: 5){
                    Text("3. 피해예방")
                        .font(.system(size: 20)).bold()
                    Text("각종 이단과 사이비종교집단으로부터 복음과 교회를 파수하고 피해를 예방하기 위한 각종 예방활동(세미나, 교육, 정보제공)")
                }
                VStack(alignment: .leading, spacing: 5){
                    Text("4. 인재양성")
                        .font(.system(size: 20)).bold()
                    Text("범람하는 이단, 사이비집단과 맞서 싸울 수 있는 이단대처 전문 사역자를 양성하는 인재양성 사역")
                }
            }
            .padding(20)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.blue)
            .ignoresSafeArea(edges: .all)
        }
    }
}

struct IntroView03_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView03(viewRouter: ViewRouter())
        }
    }
}
