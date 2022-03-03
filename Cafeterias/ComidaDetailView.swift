//
//  ComidaDetailView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 03/03/22.
//

import SwiftUI

struct ComidaDetailView: View {
    var detalle: comida
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ComidaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaDetailView(detalle: comida(id: 1, nombre: "Hamburgesa", precio: 40.99, imagen: Image("Hamburgesa"), descripcion: "Sencilla"))
    }
}
