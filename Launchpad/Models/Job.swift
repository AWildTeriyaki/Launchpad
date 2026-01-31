//
//  Job.swift
//  Launchpad
//
//  Created by Terrance Xia (student LM) on 1/28/26.
//

import Foundation


struct Job: Identifiable{
    var name: String
    var datePosted: Date
    var company: String
    var pay: Double
    var descrip: String
    
    var partTime: Bool
    var weekends: Bool
    
    var id: UUID = UUID()
    
    
    init(name: String = "Dog Walker", datePosted: Date = Date(), company: String = "Sunny Pet Care", pay: Double = 15.00, partTime: Bool = true, weekends: Bool = true, descrip: String = "Walk friendly dogs after school. Must love animals!") {
        self.name = name
        self.datePosted = datePosted
        self.company = company
        self.pay = pay
        self.partTime = partTime
        self.weekends = weekends
        self.descrip = descrip
    }
}
