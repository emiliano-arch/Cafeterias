//
//  DetalleCafeteria.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 02/03/22.
//

import SwiftUI

struct DetalleCafeteria: View {
    
    var coffe: cafeteria
    
    
    var body: some View {
        VStack{
            ZStack{
                
                coffe.imagen
                    .resizable()
                    .frame(width: 400, height: 300, alignment: .top)
                Text(coffe.nombre)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .foregroundColor(.black)
                    
                
                
            }
            
            
            Spacer()
            HStack{
                Image("Comida").resizable()
                    .padding(0)
                Image("Comida").resizable()
                    .padding(0)
                Image("Comida").resizable()
            }
            Spacer()
            HStack{
                Image("Comida").resizable()
                Image("Comida").resizable()
                Image("Comida").resizable()
            }
            Spacer()
            HStack{
                Image("Comida").resizable()
                Image("Comida").resizable()
                Image("Comida").resizable()
            }
            
            
            
        }
    }
}

struct DetalleCafeteria_Previews: PreviewProvider {
    static var previews: some View {
        DetalleCafeteria(coffe: cafeteria(id: 1, nombre: "La cabaña", ubicacion: "en la entrada mas cercana a trabajo social", imagen: Image("EjemploCafe")))
    }
}
