//
//  Pedidos.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 02/03/22.
//

import SwiftUI

var cafeteriasMuestra = [cafeteria(id: 1, nombre: "El cafesin", ubicacion: "en el camellon enmedio de Ciencias y anexo de ING", imagen: Image("ElCafesin")), cafeteria(id: 2, nombre: "La cabaña", ubicacion: "en la entrada trasera de la FCA", imagen: Image("La_Cabaña")),
                         cafeteria(id: 3, nombre: "La cabaña", ubicacion: "en la entrada trasera de la FCA", imagen: Image("La_Cabaña")),
                         cafeteria(id: 4, nombre: "La cabaña", ubicacion: "en la entrada trasera de la FCA", imagen: Image("La_Cabaña")),
                         cafeteria(id: 5, nombre: "La cabaña", ubicacion: "en la entrada trasera de la FCA", imagen: Image("La_Cabaña")),
                         cafeteria(id: 6, nombre: "La cabaña", ubicacion: "en la entrada trasera de la FCA", imagen: Image("La_Cabaña"))]

struct Pedidos: View {
    var body: some View {
        
        NavigationView{
            
            List(cafeteriasMuestra, id: \.id){
                cafe in
                
                NavigationLink(destination: CoffeDetailModalView(coffe: cafe)) {
                    
                    moldeRenglon(cafeteriaStandar: cafe)
                
                } .padding(10)
                
                    
                
                
            }
            .navigationTitle("Cafeterias")
            .padding(10)
        }
        
        
       
           
    }
            
        
        
        
}


struct Pedidos_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Pedidos()
            
        }
    }
}
