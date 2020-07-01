//
//  VocabularioRow.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct VocabularioRow: View {
    
    var palabra : Palabra
    
    var body: some View {
        HStack(alignment: .center, spacing: 10.0) {
            Text(palabra.japones)
            Spacer()
            Text(palabra.significado)
        }
        .padding(.horizontal, 10.0)
        
    }
}

struct VocabularioRow_Previews: PreviewProvider {
    static var previews: some View {
        VocabularioRow(palabra: temaData[0].vocabulario[0])
    }
}
