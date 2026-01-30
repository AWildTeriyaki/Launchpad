//
//  JobIndividualView.swift
//  Launchpad
//
//  Created by Benjamin Wallace (student LM) on 1/30/26.
//

import SwiftUI

struct JobIndividualView: View {
    @Binding var job: Job
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(width: 350, height: 200)
                .cornerRadius(15)
                .foregroundStyle(Color.white)
                .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black.opacity(0.3), lineWidth: 2)
                    )
            VStack {
                Text(job.name)
                    .font(.title2)
                    .bold(true)
                    .padding()
            }
                
            
        }
    }
}

#Preview {
    JobIndividualView(job: Binding.constant(Job()))
}
