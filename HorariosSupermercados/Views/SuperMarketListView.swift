//
//  SuperMarketListView.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/23/23.
//

import SwiftUI

struct SuperMarketListView: View {
    private let supermarkets = [
        SuperMarket(id: "1", name: "Super Selectos San Gabriel", address: "Carretera troncal del norte, Km 11...", photo: Image(systemName: "stove"), distance: 10, schedules: [Schedule(day: .Monday, openSince: 1, openUntil: 8)]),
        SuperMarket(id: "2", name: "Super Selectos San Gabriel", address: "Carretera troncal del norte, Km 11...", photo: Image(systemName: "stop"), distance: 10, schedules: [Schedule(day: .Monday, openSince: 1, openUntil: 8)])
    ]
    
    
    var body: some View {
        VStack{
            Text("SUPERMERCADOS CERCA DE TI")
            
            SuperMarketList()
            
        }
    }
}

struct SuperMarketListView_Previews: PreviewProvider {
    static var previews: some View {
        SuperMarketListView()
    }
}
