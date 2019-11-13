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
    var word_id : String
    var kana : String
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
    var english : String
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
