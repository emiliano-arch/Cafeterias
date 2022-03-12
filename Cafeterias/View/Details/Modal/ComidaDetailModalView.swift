//
//  ComidaDetailModalView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 09/03/22.
//

import SwiftUI

struct ComidaDetailModalView: View {
    @State private var comentarios = ""
    
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
            
            
            
        }
    }
}

struct ComidaDetailModalView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetailModalView(detalle: comida(id: 1, nombre: "hamburgesa", precio: 40.99, imagen: Image("Hamburgesa"), descripcion: "Sencilla con queso"))
    }
}
