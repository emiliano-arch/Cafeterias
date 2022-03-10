//
//  moldeComidas.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

struct moldeComidas: View {
    @State private var show = false
    var food :comida
    
    var body: some View {
        HStack{
            VStack{
                Text(food.nombre.capitalized).font(.headline).multilineTextAlignment(.leading)
                Text(food.descripcion).font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Text("$ "+String(food.precio)).font(.callout).fontWeight(.bold).multilineTextAlignment(.leading)
                    
            }
            food.imagen.resizable()
                .frame(width: 150, height: 150, alignment: .leading)
            Button("") {
                show = true
            }
        }.sheet(isPresented: $show, content:{ ComidaDetailModalView(detalle: food)})
    }
}

struct moldeComidas_Previews: PreviewProvider {
    static var previews: some View {
        moldeComidas(food: comida(id: 1, nombre: "hamburgesa", precio: 40.50, imagen: Image("Hamburgesa"), descripcion: "Sencilla"))
    }
}
