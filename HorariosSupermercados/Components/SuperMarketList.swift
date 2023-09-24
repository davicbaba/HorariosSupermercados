//
//  SuperMarketList.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/23/23.
//

import SwiftUI

private let supermarkets = [
    SuperMarket(id: "1", name: "Super Selectos San Gabriel", address: "Carretera troncal del norte, Km 11...", photo: Image(systemName: "stove"), distance: 10, schedules: [Schedule(day: .Monday, openSince: 1, openUntil: 8)]),
    SuperMarket(id: "2", name: "Super Selectos San Gabriel", address: "Carretera troncal del norte, Km 11...", photo: Image(systemName: "stop"), distance: 10, schedules: [Schedule(day: .Monday, openSince: 1, openUntil: 8)])
]

struct SuperMarketList: View {
    var body: some View {
        
        VStack{
            
            ScrollView{
                ForEach(supermarkets, id: \.id) { supermarket in
                    SuperMarketRow(superMarket: supermarket).padding(.horizontal, 10)
                }
                    
            }
            
        }
        
        
        
    }
}

struct SuperMarketList_Previews: PreviewProvider {
    static var previews: some View {
        SuperMarketList()
    }
}
