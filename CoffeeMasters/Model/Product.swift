//
//  Product.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 10/07/2023.
//

import Foundation

struct Product: Decodable, Identifiable {
  var id: Int
  var name: String
  var price: Double
  var description: String
  var image: String

  var imageURL: URL {
    URL(string: "https://firtman.github.io/coffeemasters/api/images/\(image)")!
  }
}
