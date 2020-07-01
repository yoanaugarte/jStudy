//
//  TemaView.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct TemaView: View {
    
    var tema: Tema
    
    var body: some View {
        TabView {
           VocabularioList(tema: tema)
             .tabItem {
                Image(systemName: "phone.fill")
                Text("Vocabulario")
              }

           GramaticaList()
             .tabItem {
                Image(systemName: "tv.fill")
                Text("Gramática")
              }
        }
    }
}

struct TemaView_Previews: PreviewProvider {
    static var previews: some View {
        TemaView(tema: temaData[0])
    }
}
