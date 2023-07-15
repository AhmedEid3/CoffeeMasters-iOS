//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 08/07/2023.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
  var menuManager = MenuManager()
  var cartManager = CartManager()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .preferredColorScheme(.light)
        .environmentObject(menuManager)
        .environmentObject(cartManager)
    }
  }
}
