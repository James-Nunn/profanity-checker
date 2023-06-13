//
//  ContentView.swift
//  profanityfilter
//
//  Created by James Nunn on 11/6/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    var body: some View {
        NavigationStack{
            Form{
                Section("Input Here:", content: {
                    HStack{
                        TextField("Enter words here", text: $text, axis: .vertical)
                    }
                })
                Section("Your Result: ", content: {
                    if text.containsProfanity(){
                        HStack{
                            Text("Your text contains profanity, please edit it")
                            Image(systemName: "x.circle")
                                .foregroundColor(.red)
                        }
                    } else {
                        HStack{
                            Text("Your text is as clean as a whistle")
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                        }
                    }
                })
                Link("Source of profanity CSV", destination:URL(string: "https://www.freewebheaders.com/full-list-of-bad-words-banned-by-google/")!)
            }
            .navigationTitle("Profanity Checker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
