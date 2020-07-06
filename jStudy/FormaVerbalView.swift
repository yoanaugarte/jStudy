//
//  FormaVerbalView.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 06/07/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct FormaVerbalView: View {
    
    var formaVerbal : FormaVerbal
    
    var body: some View {
        VStack(spacing: 10.0) {
            ForEach (formaVerbal.grupos) { g in
                GrupoFVRow(grupo: g)
                    .padding()
                Divider()
            }
        }
        .navigationBarTitle(Text(formaVerbal.nombre))
    }
}

struct FormaVerbalView_Previews: PreviewProvider {
    static var previews: some View {
        FormaVerbalView(formaVerbal: formasVerbalesData[0])
    }
}
