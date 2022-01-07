//
//  LottieView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import SwiftUI
import Lottie
import UIKit

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    var lottieName: String

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        // Add animation
        let animationView = AnimationView()
        animationView.animation = Animation.named(lottieName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        // do Nothing
    }
}
