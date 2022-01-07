//
//  IntroView05.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView05: View {
    @ ObservedObject var viewRouter:     ViewRouter
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 7){
                Spacer()
                Group{
                    Text("")
                    Text("▶︎ 약 력").font(.system(size: 25)).bold()
                }
                Group{
                    HStack(spacing: 10){
                        
                        VStack(alignment: .leading, spacing: 7){
                            Text("1982년 정통교회에서 수세")
                        }
                        VStack(alignment: .trailing){
                            Image(uiImage: #imageLiteral(resourceName: "smallCut.png"))
                                .resizable()
                                .frame(width: 105, height: 140, alignment: .center)
                        }
                    }
                }.font(.system(size: 18))
                
                Group{
                    Text("2012년 총신대 신학대학원 졸업")
                    Text("2014년 남중노회에서 목사임직")
                    Text("")
                }.font(.system(size: 18))
                Group{
                    Text("▶︎ 현  재")
                        .font(.system(size: 20)).bold()
                    Text("교회 담임")
                    Text("한국교회언론회 전문위원")
                }.font(.system(size: 18))
                Spacer()
            }
        }
        .multilineTextAlignment(.leading)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color.blue)
        .ignoresSafeArea(edges: .all)
    }
}

struct IntroView05_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView05(viewRouter: ViewRouter())
        }
    }
}
