//
//  File.swift
//  Flashzilla
//
//  Created by Rob Ranf on 1/3/25.
//

import Foundation

struct Card: Codable, Hashable, Identifiable {
    var id = UUID()
    var prompt: String
    var answer: String

    static let exampleOne = Card(prompt: "What is the term for when one or more stones are surrounded" +
                              " on all but one side, leaving only one liberty?", answer: "Atari")

    static let exampleTwo = Card(prompt: "What is the name for the rule that prohibits a player" +
                                 " from placing a piece to surround an opponents pieces in the" +
                                 " spot just vacated by a captured piece on the previous move," +
                                 " thus avoiding endless capture?", answer: "Ko")

    static let exampleThree = Card(prompt: "What is the name for the additional points provided" +
                                   " to white at the end of a game to make up for the disadvantage" +
                                   " of going second?", answer: "Komi")

    static let exampleFour = Card(prompt: "The original Chinese name of Go, 'Weiqi', is generally translated" +
                           " to mean what?", answer: "Surrounding game")

    static let exampleFive = Card(prompt: "What is the term for a player who 'has the upper hand' and" +
                           " whose moves compel their opponent to respond to a postition?",
                           answer: "Sente")
}
