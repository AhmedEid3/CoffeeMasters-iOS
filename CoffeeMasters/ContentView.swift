//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 08/07/2023.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var cartManager: CartManager

  var body: some View {
    TabView {
      MenuPage()
        .tabItem {
          Image(systemName: "cup.and.saucer")
          Text("Home")
        }

      OffersPage().tabItem {
        Image(systemName: "tag")
        Text("Offers")
      }

      OrderPage()
        .tabItem {
          Image(systemName: "cart")
          Text("Order")
        }.badge(cartManager.count())

      InfoPage()
        .tabItem {
          Image(systemName: "info")
          Text("Info")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(CartManager())
  }
}
