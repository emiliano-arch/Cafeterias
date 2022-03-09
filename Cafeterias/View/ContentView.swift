//
//  ContentView.swift
//  Cafeterias
//
//  Created by Emiliano  Medina Delgado  on 02/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{ //encima de otros
            
            Image("background1")
                .resizable()
                .frame(width: 400, height: 900, alignment: .center)
            
            Text("Bienvenido a las \ncafeterias de la FCA")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .background(.foreground)
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
