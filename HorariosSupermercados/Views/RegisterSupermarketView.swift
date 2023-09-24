//
//  RegisterSupermarketView.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/23/23.
//

import SwiftUI

struct RegisterSupermarketView: View {
    
    @State private var name: String = ""
    
    func selectLocation(){
    }
    
    var body: some View {
        
        Form{
            
            VStack{
                
                VStack{
                    Text("REGISTRAR PARQUEO")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .bold()
                    
                    AsyncImage(url: URL(string: "https://cdn-pro.elsalvador.com/wp-content/uploads/2018/11/Selectos-San-Gabriel-07.jpg")) { image in
                        image.resizable().aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    
                    Button (action: selectLocation) {
                        Label("Seleccionar imagen", systemImage: "plus.app")
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.vertical, 10)
                    
                    
                
                    Text("Nombre:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Ingresa tu nombre", text: $name)
                    
                    
                    Text("Ubicacion:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Ingresa la ubicacion del supermercado", text: $name)
                        .lineLimit(5, reservesSpace: true)
                    
                    
                    Button (action: selectLocation) {
                        Label("Seleccionar ubicacion", systemImage: "location")
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.vertical, 10)
                }
                
                
               
                
                VStack{
                    
                    Text("Lunes")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                    
                    Text("Martes")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                    
                    Text("Miercoles")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                    
                    Text("Jueves")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    DaySchedule()
                    
                    
                }
                VStack{
                    
                    Text("Viernes")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                    
                    Text("Sabado")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                    
                    Text("Domingo")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    DaySchedule()
                }
                
                
                
            }
        }
    }
}

struct RegisterSupermarketView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSupermarketView()
    }
}
