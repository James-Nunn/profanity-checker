//
//  ProfanityManager.swift
//  profanityfilter
//
//  Created by James Nunn on 11/6/2023.
//

import Foundation

class BadWordClass {
    var words = [String]()
    
    init() {
        loadCSV()
    }
    
    /// Turns Located CSV file into string then creates an array based on values seperated by ','
    func loadCSV(){
        var wordsArray = [String]()
        guard let filePath = Bundle.main.path(forResource: "GoogleList", ofType: "csv") else{
            print("Error: File not found.")
            self.words = []
            return
        }
        var CSVAsString = ""
        do{
            CSVAsString = try String(contentsOfFile: filePath)
        } catch{
            print(error)
            self.words = []
            return
        }
        let csvCells = CSVAsString.components(separatedBy: [","])
            for cell in csvCells {
                wordsArray.append(cell)
            }
        self.words = wordsArray
    }
}

extension String {
    
    /// An extension function to string that checks for profanity
    /// Use "Any String".containsProfanity()
    /// - Returns: Boolean value - If input contains profanity then it returns true
    func containsProfanity() -> Bool{
        var lowercasedString = self.lowercased()
        let specialCharacters: Set<Character> = ["!", "?", "$", "%", "(", ")"]
        lowercasedString.removeAll(where: {specialCharacters.contains($0)})
        let checkWords = lowercasedString.components(separatedBy: " ")
        let badWords = BadWordClass().words
        for badWord in badWords {
            if checkWords.contains(badWord) {
                return true
            }
        }
        return false
    }
}
