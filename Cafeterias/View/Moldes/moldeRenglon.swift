//
//  moldeRenglon.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

struct moldeRenglon: View {
    
    var cafeteriaStandar: cafeteria
    
    var body: some View {
        HStack{
            cafeteriaStandar.imagen
                .resizable()
                .frame(width: 70, height: 60, alignment: .leading)
                .shadow(color: .gray, radius: .pi, x: -8, y: 10)
                
            VStack{
                Text(cafeteriaStandar.nombre)
                    .font(.title)
                    .fontWeight(.bold)
                Text(cafeteriaStandar.ubicacion)
                    .font(.footnote)
            }
            
        }
        
        
    }
}

struct moldeRenglon_Previews: PreviewProvider {
    static var previews: some View {
        moldeRenglon(cafeteriaStandar: cafeteria(id: 1, nombre: "La cabaña", ubicacion: "cerca de idiomas", imagen:Image( "EjemploCafe")))
    }
}
