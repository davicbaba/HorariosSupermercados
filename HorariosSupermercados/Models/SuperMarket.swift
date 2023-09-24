//
//  SuperMarket.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/22/23.
//

import Foundation
import SwiftUI

struct SuperMarket {
    var id: String
    var name: String
    var address: String
    var photo: Image
    var distance: Double
    var schedules: [Schedule]
}
