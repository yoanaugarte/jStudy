//
//  TemaList.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct TemaList: View {
//    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        List{
            ForEach(temaData) { tema in
                NavigationLink(
                destination: TemaView(tema: tema)) {
                    Text(tema.nombre)
                    .padding()
                }
                
            }
        }
        .navigationBarTitle(Text("Temas"))
    }
}

struct TemaList_Previews: PreviewProvider {
    static var previews: some View {
        TemaList()
    }
}
