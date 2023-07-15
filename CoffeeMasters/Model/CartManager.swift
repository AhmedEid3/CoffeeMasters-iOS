//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 11/07/2023.
//

import Foundation

class CartManager: ObservableObject {
  @Published var cart: [(Product, Int)] = []

  func add(product: Product, quantity: Int) {
    cart.append((product, quantity))
  }

  func remove(product: Product) {
    cart.removeAll { productCart in
      productCart.0.id == product.id
    }
  }

  func count() -> Int {
    cart.reduce(0) {( result,product) in
      result + product.1
    }
  }

  func total() -> Double {
    cart.reduce(0.0) { (result, product) in
      result + (product.0.price * Double(product.1))
    }
  }

  func clear() {
    cart = []
  }
}
