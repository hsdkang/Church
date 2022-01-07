//
//  LoginView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseDatabase
import WebKit
import URLImage
import Lottie

struct LoginView: View {
    
    @ State var email: String = ""
    @ State var password: String = ""
    
    @ State private var toggleAlert = false
    @ State private var perAlert = true
    @ State private var loginAlert = true
    
    @ State private var toggleMSG: String = ""
    @ State private var perMSG: String = "로그인 권한 없음"
    @ State private var loginMSG: String = "빈칸을 입력하세요"
    
    @ ObservedObject var viewRouter: ViewRouter
    
    private let ref = Database.database().reference()
    private let logoURL = URL(string: "https://firebasestorage.googleapis.com/v0/b/early-church-cf506.appspot.com/o/Icon2.Png?alt=media&token=7a964317-25aa-41fc-a3a6-c94d8cf66cb9")
    
    var lottieName = "heart"
    
    var body: some View {
        
        VStack{
            URLImage(url: logoURL!) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
            }
            Form{
                Section(content: {
                    HStack{
                        LottieView(lottieName: "heart")
                            .frame(width: 40, height: 40, alignment: .center)
                        TextField("이메일", text: $email).keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    HStack{
                        LottieView(lottieName: "lock")
                            .frame(width: 40, height: 40, alignment: .center)
                        SecureField("비밀번호", text: $password).keyboardType(.default).autocapitalization(.none).disableAutocorrection(true)
                    }
                })
                
                VStack{
                    Button("로그인") {
                        if !email.isEmpty, !password.isEmpty {
                            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                                guard authResult != nil, error == nil else {
                                    return
                                }
                                let userID = Auth.auth().currentUser?.uid
                                ref.child("Church/UserAccount").child(userID!).child("per").observeSingleEvent(of: .value, with: { snapshot in
                                    guard let value = snapshot.value as? (String) else {
                                        return
                                    }
                                    if value == "true" {
                                        self.viewRouter.currentPage = "MenuView"
                                    } else {
                                        toggleAlert = perAlert
                                        toggleMSG = perMSG
                                    }
                                })
                            }
                        } else {
                            toggleAlert = loginAlert
                            toggleMSG = loginMSG
                        }
                    }
                }
                .alert(isPresented: $toggleAlert) {
                    Alert(title: Text(""),
                          message: Text("\(toggleMSG)"),
                          dismissButton: .default(Text("확인")))
                }
                
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)){
                        self.viewRouter.currentPage = "RegisterView"
                    }
                }) { Text("회원가입") }
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)){
                        self.viewRouter.currentPage = "MenuViewGuest"
                    }
                }) { Text("게스트 로그인") }
            }
        }
        .navigationTitle("로그인")
        .onAppear {
            UITableView.appearance().backgroundColor = .white
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
