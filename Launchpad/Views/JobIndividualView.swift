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
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(job.name)
                    .font(.title2)
                    .bold()
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 22, height: 30)
            }

            Text("\(job.company) • \(job.pay.formatted(.currency(code: "USD")))/hour")
                .font(.title3)

            Text(job.descrip)
                .font(.body)
                .foregroundStyle(.black.opacity(0.6))
            HStack {
                if job.partTime {
                    Text("Part Time")
                        .font(.body)
                        .foregroundStyle(Color.white)
                        .padding([.leading, .trailing], 15)
                        .padding([.top, .bottom], 8)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color.blue)
                        )

                }
                if job.weekends {
                    Text("Weekends")
                        .font(.body)
                        .foregroundStyle(Color.white)
                        .padding([.leading, .trailing], 15)
                        .padding([.top, .bottom], 8)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color.blue)
                        )

                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black.opacity(0.1), lineWidth: 2)
        )

    }
}


#Preview {
    JobIndividualView(job: Binding.constant(Job()))
}
