//
//  SignUpView.swift
//  Launchpad
//
//  Created by Sam Grandwetter (student LM) on 1/30/26.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(Color("AliceBlue"))
            
            ScrollView{
                Spacer()
                Image(("Logo"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                ZStack{
                    Rectangle()
                        .foregroundStyle(.white)
                        .cornerRadius(15)
                        .padding([.leading, .trailing], 20)

                        TextField(text: $email) {
                            Text("Email:")
                                .font(Font(Constants.choreFont))
                                .foregroundStyle(Color("ImperialBlue"))
                        }
                    .padding(.leading, 30)
                    .scrollContentBackground(.hidden)
                    .background(Color("AliceBlue"))
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
                }
                
                
            }
        }
        
    }
}

#Preview {
    SignUpView()
}
