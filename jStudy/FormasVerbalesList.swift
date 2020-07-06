//
//  FormasVerbalesList.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 06/07/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct FormasVerbalesList: View {
    var body: some View {
        List{
            ForEach(formasVerbalesData) { formaV in
                NavigationLink(
                destination: FormaVerbalView(formaVerbal: formaV)) {
                    Text(formaV.nombre)
                    .padding()
                }
            }
            .navigationBarTitle(Text("Formas verbales"))
        }
    }
}

struct FormasVerbalesList_Previews: PreviewProvider {
    static var previews: some View {
        FormasVerbalesList()
    }
}
