//
//  File.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import Foundation

final class modelData: ObservableObject {
    
    @Published var namez:[name] = load("names.json")
    var category: [String:[name]] {
        Dictionary(grouping: namez, by: {$0.genre})
    }
    
}
func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else
    {
        fatalError("Could not find \(filename)")
    }
    do{
        try data = Data(contentsOf: file)
    }
    catch{
        fatalError("couldn't load file from \(filename)")
    }
    do {
      let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch
    {
        fatalError("Couldn't parse data \(error)")
    }
}
