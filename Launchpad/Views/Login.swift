//
//  Login.swift
//  Launchpad
//
//  Created by Terrance Xia (student LM) on 1/28/26.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(Color("AliceBlue"))
            
            VStack{
                Spacer()
                Image(("Logo"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                
                Text("Welcome to Launchpad!")
                    .font(Font(Constants.choreFont))
                    .foregroundStyle(Color("ImperialBlue"))
                Spacer()
                Spacer()
                
                
                Form{
                    Section{
                        TextField(text: $email) {
                            Text("Email:")
                                .font(Font(Constants.choreFont))
                                .foregroundStyle(Color("ImperialBlue"))
                        }
                    }
                        Section{
                        TextField(text: $password) {
                            Text("Password: ")
                                .font(Font(Constants.choreFont))
                                .foregroundStyle(Color("ImperialBlue"))
                        }
                        
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color("AliceBlue"))
                
                Button{
                    
                } label:{
                    ZStack{

                    Rectangle()
                        .foregroundStyle(Color("BlueBell"))
                        .cornerRadius(30)
                        
                    Text("Login")
                            .font(Font(Constants.choreFont))
                        .foregroundStyle(Color("AliceBlue"))
                    }
                    .padding([.leading, .trailing], 100)
                    .padding(.top, 80)
                }
                Button{
                    
                } label:{
                    ZStack{

                    Rectangle()
                        .foregroundStyle(Color("BlueBell"))
                        .cornerRadius(30)
                        
                        
                    Text("Sign Up")
                            .font(Font(Constants.choreFont))
                        .foregroundStyle(Color("AliceBlue"))
                    }
                    .padding([.leading, .trailing], 100)
                    .padding(.bottom, 80)
                }
                
                
            }
        }
        
    }
}

#Preview {
    Login()
}
