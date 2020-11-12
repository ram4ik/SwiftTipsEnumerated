//
//  ContentView.swift
//  SwiftTipsEnumerated
//
//  Created by ramil on 12.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    let people = ["Ivan", "Jane", "Mark", "Sofi"]
    
    var body: some View {
        Text("Swift Tips: Enumerated")
            .padding()
            .onAppear() {
                withIndices()
                withEnumerated()
            }
    }
    
    private func withIndices() {
        for i in people.indices {
            let person = people[i]
            
            print("At index \(i) -> \(person)")
        }
    }
    
    private func withEnumerated() {
        for (i, person) in people.enumerated() {
            print("At index \(i) -> \(person)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
