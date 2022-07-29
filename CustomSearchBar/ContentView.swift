//
//  ContentView.swift
//  CustomSearchBar
//
//  by devlight on 29.07.2022.
//

import SwiftUI

struct ContentView: View {
    let languages = ["JavaScript", "Python", "SwiftUI", "Dart"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResult, id: \.self) { language in
                    Text(language)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Languages")
        }
    }
    
    var searchResult: [String] {
        if searchText.isEmpty {
            return languages
        } else {
            return languages.filter { $0.contains(searchText)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
