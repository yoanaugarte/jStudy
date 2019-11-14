//
//  Modelos.swift
//  jStudy
//
//  Created by Yoana Ugarte on 12/11/2019.
//  Copyright © 2019 Yoana Ugarte. All rights reserved.
//

import Foundation


struct Kana : Codable {
    var char_id : String
    var character : String
    var romanization : String
}

struct Word : Codable {
    var word_id : Int
    var kana : String
    var spanish : String
    var definitions : [String]
}

struct Lesson : Codable {
    var lesson_id : Int
    var title : String
    var words : [Word]
    var grammar : [Grammar]
}

struct Sentence : Codable {
    var id : Int
    var structure : String
    var japanese : String
    var spanish : String
    var alternate : String
}

struct Grammar : Codable {
    var id : Int
    var title : String
    var alternate : String
    var structure : String
    var yomikata : String
    var meaning : String
    var example_sentences : [Sentence]
}

class Flashcard {
    var front : String = ""
    var back : String = ""
    
    init(_ frase : Sentence, _ tipoPregunta : PreguntaMode) {
        switch tipoPregunta {
        case .spanishToJapanese:
            front = frase.spanish
            back = frase.japanese
        default:
            front = frase.japanese
            back = frase.spanish
        }
    }
    init(_ palabra : Word, _ tipoPregunta : PreguntaMode) {
        switch tipoPregunta {
        case .spanishToJapanese:
            front = palabra.spanish
            back = palabra.kana
        default:
            front = palabra.kana
            back = palabra.spanish
        }
    }
}

enum PreguntaMode: Int {
    case spanishToJapanese
    case japaneseToSpanish
    
}

enum TipoExamen {
    case vocabulario
    case gramatica
    case todo
}


//var preguntaModo : PreguntaMode = .spanishToJapanese

class Examen{
    
    var preguntaModo : PreguntaMode = .spanishToJapanese
    
    var tema : Lesson
    var tipoExamen : TipoExamen
    
    var deck = [Flashcard]()
    
    init(_ tema : Lesson, _ tipo : TipoExamen) {
        self.tema = tema
        self.tipoExamen = tipo
        if tipoExamen == .vocabulario{
            for w in tema.words{
                deck.append(Flashcard(w, .spanishToJapanese))
            }
        }else if tipoExamen == .gramatica{
            for g in tema.grammar{
                for s in g.example_sentences{
                    deck.append(Flashcard(s, .spanishToJapanese))
                }
            }
        }
        
    }
    
    func tipoPregunta() -> PreguntaMode{
        //0 Español -> Japonés
        //1 Mezcla
        
        return .spanishToJapanese
    }
    
}
