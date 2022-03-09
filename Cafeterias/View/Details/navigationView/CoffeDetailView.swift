//
//  CoffeDetailView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

var comidas = [comida(id: 1, nombre: "hamburgesa", precio: 40, imagen: Image("Hamburgesa"), descripcion: "Sencilla"), comida(id: 2, nombre: "hamburgesa Hawaiana", precio: 60, imagen: Image("Hamburgesa"), descripcion: "Con piña, jamon  y queso derretido")]

struct CoffeDetailView: View {
    
    
    
    var coffe :cafeteria
  var imageVisible = true
    
    
    var body: some View {
        
        VStack{
            
            
            if imageVisible {
                ZStack{
                    
                    coffe.imagen
                        .resizable()
                        .frame(width: 400, height: 200, alignment: .top)
                    Text(coffe.nombre)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
  
                }
                NavigationView{
                    List(comidas, id: \.id){ i in
                        
                        NavigationLink(destination: ComidaDetailView(detalle: i)){
                            
                            moldeComidas(food: i)
                            
                        } .padding(10)
                        
                        
                    }
                    
                    .navigationTitle("Menú")
                }
            } else{
                NavigationView{
                    List(comidas, id: \.id){ i in
                        
                        NavigationLink(destination: ComidaDetailView(detalle: i)){
                            
                            moldeComidas(food: i)
                            
                        } .padding(10)
                        
                        
                    }
                    
                    .navigationTitle("Menú")
                }
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

struct CoffeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeDetailView(coffe: cafeteria(id: 1, nombre: "El cafesin", ubicacion: "en la entrada mas cercana a trabajo social", imagen: Image("EjemploCafe")))
    }
}
