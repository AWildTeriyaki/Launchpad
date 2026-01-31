//
//  JobDashboardView.swift
//  Launchpad
//
//  Created by Terrance Xia (student LM) on 1/28/26.
//

import SwiftUI

struct JobDashboardView: View {
    @State var jobName: String = ""
    
    //Sample job list made with AI
    @State var jobList: [Job] = [

        Job(
            name: "Dog Walker",
            company: "Sunny Pet Care",
            pay: 15.00,
            partTime: true,
            weekends: true,
            descrip: "Walk friendly dogs after school. Must love animals!"
        ),

        Job(
            name: "Math Tutor",
            company: "Main Line Tutoring",
            pay: 22.00,
            partTime: true,
            weekends: false,
            descrip: "Help middle school students with math homework and test prep."
        ),

        Job(
            name: "Lifeguard",
            company: "YMCA Ardmore",
            pay: 18.50,
            partTime: true,
            weekends: true,
            descrip: "Ensure swimmer safety and maintain pool cleanliness. Certification required."
        ),

        Job(
            name: "Retail Associate",
            company: "Urban Outfitters",
            pay: 16.00,
            partTime: true,
            weekends: true,
            descrip: "Assist customers, organize merchandise, and run the register."
        ),

        Job(
            name: "Camp Counselor",
            company: "Lower Merion Parks & Rec",
            pay: 14.75,
            partTime: true,
            weekends: false,
            descrip: "Lead activities for kids ages 6–10 during summer camp sessions."
        ),

        Job(
            name: "Barista",
            company: "Green Bean Café",
            pay: 17.00,
            partTime: true,
            weekends: true,
            descrip: "Prepare coffee drinks and provide friendly customer service."
        )
    ]

    var body: some View {
        ScrollView{
            VStack (spacing: 16){
                //Extra stuff
                Text("Jobs For You")
                    .font(.largeTitle)
                    .bold(true)
                    .foregroundStyle(Color.blue)
                Divider()
                    .overlay(Color.black)
                    .opacity(0.7)
                    .padding([.leading, .trailing], 2)
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
                //Actual jobs
                ForEach($jobList) { job in
                    JobIndividualView(job: job)
                }
            }
            .padding()
        }
    }
}

#Preview {
    JobDashboardView()
}
