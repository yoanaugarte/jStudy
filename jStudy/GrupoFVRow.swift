//
//  GrupoFVRow.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 06/07/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct GrupoFVRow: View {
    
    var grupo : Grupo
    
    var body: some View {
        VStack(spacing: 10.0) {
            Text(grupo.nombre)
                .font(.headline)
            Text(grupo.norma)
            ForEach (grupo.ejemplos) { p in
                EjemploFVRow(ejemplo: p)
                    .padding()
            }
            
        }
        
    }
}

struct GrupoFVRow_Previews: PreviewProvider {
    static var previews: some View {
        GrupoFVRow(grupo: formasVerbalesData[0].grupos[0])
    }
}
