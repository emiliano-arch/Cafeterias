//
//  CoffeDetailView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 09/03/22.
//

import SwiftUI

var comidasModal = [comida(id: 1, nombre: "hamburgesa", precio: 40, imagen: Image("Hamburgesa"), descripcion: "Sencilla"), comida(id: 2, nombre: "hamburgesa Hawaiana", precio: 60, imagen: Image("Hamburgesa"), descripcion: "Con piña, jamon  y queso derretido")]

struct CoffeDetailModalView: View {
    
//    @State private var status = false
    
    var coffe :cafeteria
//  var imageVisible = true
    
    
    var body: some View {
        
        VStack{

                ZStack{
                    
                    coffe.imagen
                        .resizable()
                        .frame(width: 400, height: 200, alignment: .top)
                    Text(coffe.nombre)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
  
                }
                
                    List(comidas, id: \.id){ i in
                        moldeComidas(food: i)
       
                    }
                    
                  
            
            
            
            
            
            /*
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
            */
            
            
        }
    }
}

struct CoffeDetailModalView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeDetailModalView(coffe: cafeteria(id: 1, nombre: "El cafesin", ubicacion: "en la entrada mas cercana a trabajo social", imagen: Image("EjemploCafe")))
    }
}
