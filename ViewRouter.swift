//
//  ViewRouter.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter : ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()

        var currentPage: String = "LoginView" {
        
        didSet {
            objectWillChange.send(self)
        }
    }
}

