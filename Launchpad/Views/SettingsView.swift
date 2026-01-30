//
//  SettingsView.swift
//  Launchpad
//
//  Created by Terrance Xia (student LM) on 1/28/26.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea(.all)
                .foregroundStyle(Color("ImperialBlue"))
            
            VStack {
                
                HStack {
                    Spacer()
                        .frame(width: 20)
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                    }
                    Spacer()
                }

                HStack {
                    Spacer()
                        .frame(width: 30)
                    Image("placeholder_pfp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .padding(.top, 50)
                    Spacer()
                        .frame(width: 15)
                    VStack {
                        Text("Name")
                            .font(Font(Constants.tabFont))
                    }
                    Spacer()
                }

                
                Spacer()
            }
        }

        
    }
    
}

#Preview {
    SettingsView()
}
