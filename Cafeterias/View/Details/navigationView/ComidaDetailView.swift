//
//  ComidaDetailView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

struct ComidaDetailView: View {
    @State private var contadorCarrito = 0
    @State private var comentarios = ""
    
    var detalle: comida
    var example = """
    Necesitas algo en especial?
    ej. Sin mayonesa, sin queso, sin catsup
"""
    
    var body: some View {
        
        ScrollView {
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
                
                TextField(example, text: $comentarios).multilineTextAlignment(.center)
                    .frame(width: 300, height: 200, alignment: .center)
                    .lineLimit(3)
                    .cornerRadius(3.2)
                    .overlay(Rectangle().stroke(Color.gray, lineWidth: 3)).shadow(color: Color.gray, radius: .pi, x: -9, y: -1)
                    //.overlay(Circle().stroke(Color.gray, lineWidth: 3))
                    
                Spacer()
                
                //stepper
                Stepper(value: $contadorCarrito, in: 0...20) {
                    Text("Agregar")
                        .fontWeight(.black)
                        .padding(.leading,120)
                        .font(.subheadline)
                    
                        
                }
                
                .padding(.trailing,90)
                //confirmacion del stepper
                Text("hay \(contadorCarrito) elementos en el carrito")
                
                
                
                
            }
        }
        
    }
}

struct ComidaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetailView(detalle: comida(id: 1, nombre: "Hamburgesa", precio: 40.99, imagen: Image("Hamburgesa"), descripcion: "Sencilla"))
    }
}
