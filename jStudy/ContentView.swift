//
//  ContentView.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 50.0) {
                NavigationLink(
                  destination: TemaList()) {
                    Text("Temas")
                }
                NavigationLink(
                  destination: FormasVerbalesList()) {
                    Text("Formas verbales")
                }
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
