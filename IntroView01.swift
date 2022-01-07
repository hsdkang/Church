//
//  IntroView01.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct IntroView01: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Text("▶︎ 교회 소속")
                .font(.system(size: 25)).bold()
            Text("")
            Text("교회는\n대한예수교장로회 합동 교단\n남중노회 소속입니다.").font(.system(size: 20))
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color.blue)
        .ignoresSafeArea(edges: .all)
    }
}

struct IntroView01_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroView01(viewRouter: ViewRouter())
        }
    }
}

