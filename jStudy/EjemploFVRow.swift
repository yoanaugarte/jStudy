//
//  EjemploFVRow.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 06/07/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct EjemploFVRow: View {
    
    var ejemplo : EjemploFV
    
    var body: some View {
        HStack{
            Text(ejemplo.verboMasu)
            Text("->")
            Text(ejemplo.verboFV)
        }
        
    }
}

struct EjemploFVRow_Previews: PreviewProvider {
    static var previews: some View {
        EjemploFVRow(ejemplo: formasVerbalesData[0].grupos[0].ejemplos[0])
    }
}
