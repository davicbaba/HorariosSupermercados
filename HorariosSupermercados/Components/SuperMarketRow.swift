//
//  SuperMarketRow.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/22/23.
//

import SwiftUI

struct SuperMarketRow: View {
    var superMarket : SuperMarket
    @State var expanded = false

    func selectDeselect(){
        expanded.toggle()
    }
    
    var body: some View {
        VStack {
            HStack(){
                superMarket.photo
                           .resizable()
                           .frame(width: 40, height: 40)
                VStack(alignment: .leading){
                    Text(superMarket.name).font(.headline)
                    Text(superMarket.address).font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading) // Alinea el contenido a la izquierda y establece el ancho máximo

                VStack(alignment: .trailing){
                    Text(String(format: "%.1f", superMarket.distance) + "Km")
                                        .font(.subheadline)
                    
                }
            }
            .onTapGesture {
                self.selectDeselect()
            }
            HStack{
                Image(systemName: "clock")
                    .font(.system(size: 20, weight: .light))
                    .padding(.horizontal, 10)
                
                
                Text("Cerrado").foregroundColor(Color.red)
                Text("Abre a las 8.am")
                Spacer()
                if expanded {
                  Image(systemName: "chevron.up")
                } else {
                  Image(systemName: "chevron.down")
                }
            }
            .onTapGesture {
                self.selectDeselect()
            }
            
            if expanded {
                HStack(spacing: 0) {
                    
                    VStack{
                        
                        HStack{
                            Text("Lunes")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            Text("8 a. m - 9 p. m")
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        }
                         
                    }
                    
                    
                }
            }
            
            
            
        }
    }
}

struct SuperMarketRow_Previews: PreviewProvider {
    static var previews: some View {
        SuperMarketRow(superMarket: SuperMarket(id: "1", name: "Super Selectos San Gabriel", address: "Carretera troncal del norte,Km 11", photo: Image(systemName: "person.fill.badge.minus"), distance: 15.0, schedules: [Schedule(day: .Monday, openSince: 1, openUntil: 8)])).previewLayout(.fixed(width: 400, height: 60))
    }
}
