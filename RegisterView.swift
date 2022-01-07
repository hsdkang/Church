//
//  RegisterView.swift
//  Church
//
//  Created by 한상대 on 2022/01/07.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseDatabase
import Lottie

struct RegisterView: View {
    @ ObservedObject var viewRouter: ViewRouter
    @ State private var registerAlert = false
    
    @State var name: String = ""
    @State var phone: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordcheck: String = ""
    
    var body: some View {
        
        VStack{
            LottieView(lottieName: "sheep")
                .frame(width: 100, height: 110, alignment: .center)
            Form{
                Section(header: Text(""), content: {

                    TextField("이름", text: $name).keyboardType(.default)
                    TextField("휴대폰 번호", text: $phone).keyboardType(.phonePad)
                    TextField("이메일", text: $email).keyboardType(.emailAddress).autocapitalization(.none)
                })
                Section(header: Text(""), content: {
                    SecureField("비밀번호", text: $password).keyboardType(.default)
                    SecureField("비밀번호 확인", text: $passwordcheck).keyboardType(.default)
                })
                Button("가입신청"){
                    if !name.isEmpty, !phone.isEmpty, !email.isEmpty, !password.isEmpty,  !passwordcheck.isEmpty {
                        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                            guard authResult != nil, error == nil else {
                                return
                            }
                            var ref: DatabaseReference!
                            ref = Database.database().reference()
                            let userID = Auth.auth().currentUser?.uid
                            ref.child("Early_Church/UserAccount").child(userID!).child("name").setValue(name)
                            ref.child("Early_Church/UserAccount").child(userID!).child("phone").setValue(phone)
                            ref.child("Early_Church/UserAccount").child(userID!).child("email").setValue(email)
                            ref.child("Early_Church/UserAccount").child(userID!).child("uid").setValue(userID)
                            ref.child("Early_Church/UserAccount").child(userID!).child("per").setValue("false")
                            self.viewRouter.currentPage = "LoginView"
                        }
                    } else {
                        registerAlert = true
                    }
                }.alert(isPresented: $registerAlert) {
                    Alert(title: Text(""),
                          message: Text("빈칸을 입력하세요"),
                          dismissButton: .default(Text("확인")))
                }
                
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)){
                        self.viewRouter.currentPage = "LoginView"
                    }
                }) { Text("로그인으로 이동") }
            }
        }
        .navigationTitle("회원가입")
        .onAppear {
           UITableView.appearance().backgroundColor = .white
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RegisterView(viewRouter: ViewRouter())
        }
    }
}
