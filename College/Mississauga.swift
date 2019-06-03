//
//  Mississauga.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import Foundation
class Mississauga{
    public private(set) var course: String
    public private(set) var seats: Int
    init(course: String , seats: Int) {
        self.course = course
        self.seats = seats
    }
    func setCourse(course: String){
        self.course = course
    }
    func setSeats(seats: Int) {
        self.seats = seats
    }
}
