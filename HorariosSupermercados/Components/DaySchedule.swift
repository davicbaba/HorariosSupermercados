//
//  DaySchedule.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/23/23.
//

import SwiftUI

struct DaySchedule: View {
    @State private var name: String = ""
    
    var body: some View {
        HStack{
            VStack{
                Text("Abre:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("09:00 am", text: $name)
                
                
            }
            VStack{
                Text("Cierra:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("09:00 am", text: $name)
                
                
            }
        }
    }
}

struct DaySchedule_Previews: PreviewProvider {
    static var previews: some View {
        DaySchedule()
    }
}
