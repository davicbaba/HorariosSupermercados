//
//  LoginView.swift
//  HorariosSupermercados
//
//  Created by Davis Cruz on 9/23/23.
//

import SwiftUI

struct LoginView: View {
    @State private var name: String = ""
    
    func login(){
    }
    
    var body: some View {
        
        VStack{
            Form{
                
                HStack{
                    AsyncImage(url: URL(string: "https://media.istockphoto.com/id/1412901513/vector/modern-hand-technology-logo-design.jpg?s=612x612&w=0&k=20&c=zZ4Kh-J2BV_oLfx8Tfd65aUFdTNlCvjmWxLOT4sEeVs=")) { image in
                        image.resizable().aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    
                }.frame(maxWidth: .infinity, alignment: .center)
                
                
                Text("Ingresa tu correo electronico:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("tuemail@gmail.com", text: $name)
                
                Text("Ingresa tu contrasena:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("*************", text: $name)
                
                Button (action: login) {
                   Text("Entrar")
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.vertical, 10)
            }
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
