//
//  ComidaDetailModalView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 09/03/22.
//

import SwiftUI

var carritoArray = [comida(id: 1, nombre: "hamburgesa", precio: 40, imagen: Image("Hamburgesa"), descripcion: "Sencilla", cantidad: 2), comida(id: 2, nombre: "hamburgesa Hawaiana", precio: 60, imagen: Image("Hamburgesa"), descripcion: "Con piña, jamon  y queso derretido", cantidad: 3)]



struct ComidaDetailModalView: View {
    
   
    
    
    func sumaTotal(carrito: [comida]) -> Float{
        var total2 : Float = 0.0
        
        for producto in carrito{
            
            total2 += (producto.precio * Float(producto.cantidad))
            print(total2)
        }
        
        return total2
    }
    
    
    
    @State private var showCarrito = false
    @State private var comentarios = ""
    @State private var contadorCarrito = 0
    
    @State var total: Float = 0.0
    @State private var selection : Int?
    
    var detalle: comida
    var example = """
    Necesitas algo en especial?
    ej. Sin mayonesa, sin queso, sin catsup
"""
    
    
    
    
    
    var body: some View {
        
        VStack{
            
            detalle.imagen.resizable()
                .frame(width: 400, height: 300, alignment: .top)
                .padding()
            Text(detalle.nombre.capitalized)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(detalle.descripcion)
                .multilineTextAlignment(.center)
            Text("$ "+String(detalle.precio))
            Spacer()
            TextField(example, text: $comentarios)
                .multilineTextAlignment(.center)
                    .frame(width: 300, height: 200, alignment: .center)
                    .lineLimit(3)
                    .cornerRadius(3.2)
                    .overlay(Rectangle().stroke(Color.gray, lineWidth: 3)).shadow(color: Color.gray, radius: .pi, x: -9, y: -1)
            
            Stepper(value: $contadorCarrito, in: 0...20) {
                Text("Cantidad [\(contadorCarrito)]")
                    .fontWeight(.black)
                    .padding(.leading,105)
                    .frame(alignment: .trailing)
                    .font(.subheadline)
                
                    
            }.frame(alignment: .leading).padding(.trailing, 50)
            Spacer()
            
            Button(action: ({
                total = sumaTotal(carrito: carritoArray)
                
                    
           
                }), label: ({
            Text("Agregar al carrito")
                    
            }) )
            
            Button("ir al carrito"){
                showCarrito  = true
            }
 
 
        }.sheet(isPresented: $showCarrito, content:{ CarritoDetailView(total: $total, detalleCarrito: detalle)})
    }
}

struct ComidaDetailModalView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetailModalView(detalle: comida(id: 1, nombre: "hamburgesa", precio: 40.99, imagen: Image("Hamburgesa"), descripcion: "Sencilla con queso", cantidad: 1))
    }
}
