//
//  JobDashboardView.swift
//  Launchpad
//
//  Created by Terrance Xia (student LM) on 1/28/26.
//

import SwiftUI

struct JobDashboardView: View {
    @State var jobName: String = ""
    var body: some View {
        ScrollView{
            VStack {
                Text("Jobs For You")
                    .font(.title)
                    .bold(true)
                Divider()
                    .overlay(Color.black)
                    .opacity(0.7)
                    .padding([.leading, .trailing])
                TextField(
                    "",
                    text: $jobName,
                    prompt: Text("Search for a job...")
                        .foregroundStyle(Color.black.opacity(0.6))
                )
                    .padding(.horizontal, 16)
                    .frame(height: 48)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 1)
                    )
                    .padding()
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    JobDashboardView()
}
