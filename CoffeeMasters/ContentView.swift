//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 08/07/2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    OfferView(title: "My Offer",
              description: "This is description of Offer!")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
