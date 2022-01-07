//
//  ContentView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @ ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        NavigationView{
            VStack {
                if viewRouter.currentPage == "LoginView" {
                    LoginView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "RegisterView"{
                    RegisterView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "MenuView"{
                    MenuView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "NewsView"{
                    NewsView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "IntroView"{
                    IntroView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "EventView"{
                    EventView(viewRouter:     viewRouter)
                } else if viewRouter.currentPage == "CommunityView"{
                    CommunityView(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "MenuViewGuest"{
                    MenuViewGuest(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "NewsViewGuest"{
                    NewsViewGuest(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "IntroViewGuest"{
                    IntroViewGuest(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "EventViewGuest"{
                    EventViewGuest(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "CommunityViewGuest"{
                    CommunityViewGuest(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_01_01"{
                    GospelView_01_01(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_01_02"{
                    GospelView_01_02(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_01_03"{
                    GospelView_01_03(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_01_04"{
                    GospelView_01_04(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_02_01"{
                    GospelView_02_01(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_02_02"{
                    GospelView_02_02(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "GospelView_03_01"{
                    GospelView_03_01(viewRouter: viewRouter)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
