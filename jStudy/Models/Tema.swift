//
//  Tema.swift
//  jStudy
//
//  Created by Yoana Ugarte García on 03/04/2020.
//  Copyright © 2020 Miotek. All rights reserved.
//

import Foundation

struct Tema: Hashable, Codable, Identifiable {
    var id: Int
    var nombre: String
    var vocabulario: [Palabra]
}

struct Palabra: Hashable, Codable, Identifiable {
    var id: Int
    var japones: String
    var romaji: String
    var significado: String
}

struct FormaVerbal {
    var id: Int
    var nombre: String
    var grupos: [Grupo]
}

struct Grupo {
    var id: Int
    var nombre: String
    var norma: String?
    var ejemplos: [EjemploFV]
}

///Ejemplo forma verbal
struct EjemploFV {
    var id: Int
    var verboMasu: String
    var verboFV: String
}
