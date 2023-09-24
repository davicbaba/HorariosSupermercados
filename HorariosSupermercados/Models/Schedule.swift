//
//  Schedule.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/22/23.
//

import Foundation

struct Schedule {
    var day: DayOfWeek
    var openSince: Int
    var openUntil: Int
    
}

enum DayOfWeek {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}
