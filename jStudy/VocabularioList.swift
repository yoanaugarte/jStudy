//
//  VocabularioList.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import SwiftUI

struct VocabularioList: View {
    
    var tema : Tema
    
    var body: some View {
        List {
                    HStack(alignment: .center, spacing: 10.0) {
                        Text("Japonés")
                            .fontWeight(.heavy)
                        Spacer()
                        Text("Español")
                            .fontWeight(.heavy)
                    }
                    .padding(.horizontal, 10.0)
                    ForEach (tema.vocabulario) { p in
                        VocabularioRow(palabra: p)
                            .padding()
                    }
        //            .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .frame(maxWidth: .infinity)
            .navigationBarTitle("Vocabulario")
                }
        
    }
    
}

struct VocabularioList_Previews: PreviewProvider {
    static var previews: some View {
        VocabularioList(tema: temaData[0])
    }
}
