//
//  Category.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 10/07/2023.
//

import Foundation

struct Category: Decodable, Identifiable {
  var id: String { self.name }
  var name: String
  var products: [Product]
}
