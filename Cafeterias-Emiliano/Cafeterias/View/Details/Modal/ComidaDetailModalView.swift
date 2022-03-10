//
//  ComidaDetailModalView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 09/03/22.
//

import SwiftUI

struct ComidaDetailModalView: View {
    
    func sumaTotal(carrito: [comida]) -> Float{
        var total2 : Float = 0.0
        
        for producto in carrito{
            
            total2 += producto.precio
        }
        
        return total2
    }
    
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
            Spacer()
            Stepper(value: $contadorCarrito, in: 0...20) {
                Text("Cantidad [\(contadorCarrito)]")
                    .fontWeight(.black)
                    .padding(.leading,120)
                    .font(.subheadline)
                
                    
            }
            Spacer()
            Button(action: ({
                total = sumaTotal(carrito: carrito)
                    
           
                }), label: ({
            Text("Agregar al carrito")
                    
            }) )
            
//            NavigationView{
//                NavigationLink (destination: CarritoDetailView(total: $total, detalleCarrito: detalle), tag: 1, selection: $selection){
//                    
//                    
//                    
//                    
//                }
//            }
 
        }
    }
}

struct ComidaDetailModalView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetailModalView(detalle: comida(id: 1, nombre: "hamburgesa", precio: 40.99, imagen: Image("Hamburgesa"), descripcion: "Sencilla con queso"))
    }
}
