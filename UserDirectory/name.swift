//
//  name.swift
//  test
//
//  Created by Suraj Ramnani on 22/05/23.
//

import Foundation

struct name: Codable,Hashable{
    let name: String
    let age: Int
    let email: String
    let interests: [String]
    let genre: String
    let address: address
    let education: [education]
    var favorite: Bool
  
    
}
struct address: Codable,Hashable{
    let street: String
    let city: String
    let state: String
    let zipcode: String
}
struct education: Codable, Hashable{
    let degree: String
    let major: String
    let university: String
    let year: Int
    
}
