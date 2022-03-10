//
//  CoffeDetailView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

var comidas = [comida(id: 1, nombre: "hamburgesa", precio: 40, imagen: Image("Hamburgesa"), descripcion: "Sencilla"), comida(id: 2, nombre: "hamburgesa Hawaiana", precio: 60, imagen: Image("Hamburgesa"), descripcion: "Con piña, jamon  y queso derretido")]

var carrito = [comida(id: 1, nombre: "hamburgesa", precio: 40, imagen: Image("Hamburgesa"), descripcion: "Sencilla"), comida(id: 2, nombre: "hamburgesa Hawaiana", precio: 60, imagen: Image("Hamburgesa"), descripcion: "Con piña, jamon  y queso derretido")]

struct CarritoDetailView: View {
    
    @Binding var total: Float
    var detalleCarrito: comida
    
    
    var body: some View {
        
        VStack{
            
                NavigationView{
                    VStack {
                        List(comidas, id: \.id){ i in

                                moldeComidas(food: i)
                            

                        }

                        
                        Text("Total: " + String(total))
                        
                        .navigationTitle("carrito")
                        
                        
                    }
                    

                }
        }
    }
}

struct CarritoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarritoDetailView(total: .constant(0.0), detalleCarrito: comida(id: 1, nombre: "Hamburgesa", precio: 40.90, imagen: Image("Hamburgesa"), descripcion: "Sencilla con queso"))
    }
}
