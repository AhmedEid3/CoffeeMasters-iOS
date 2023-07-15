//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 09/07/2023.
//

import SwiftUI

struct MenuPage: View {
  @EnvironmentObject var menuManager: MenuManager

  var body: some View {
    NavigationView {
      List {
        ForEach(menuManager.menu) { category in
          Section {
            Text(category.name).font(.headline)
            
            ForEach(category.products) { product in
              NavigationLink {
                DetailsPage(product: product)
              } label: {
                ProductItem(product: product)
              }
            }
          }
        }
      }.navigationTitle("Products")
    }
  }
}

struct MenuPage_Previews: PreviewProvider {
  static var previews: some View {
    MenuPage().environmentObject(MenuManager())
  }
}
