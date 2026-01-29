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
                Text("Login:")
                    .font(Font(Constants.choreFont))
                    .foregroundStyle(Color("ImperialBlue"))
                
                Form{
                    Section{
                        
                        TextField(text: $email) {
                            Text("abcd@gmail.com")
                                .font(Font(Constants.choreFont))
                                .foregroundStyle(Color("ImperialBlue"))
                        }
                        
                        TextField(text: $password) {
                            Text("qwerty")
                                .font(Font(Constants.choreFont))
                                .foregroundStyle(Color("ImperialBlue"))
                        }
                        
                    }
                }
                Button{
                    
                } label:{
                    ZStack{

                    Rectangle()
                        .foregroundStyle(Color("BlueBell"))
                        .cornerRadius(30)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                        .padding(.all, 85)
                    Text("Login")
                            .font(Font(Constants.choreFont))
                        .foregroundStyle(Color("AliceBlue"))
                    }
                }
                
                
            }
        }
        
    }
}

#Preview {
    Login()
}
