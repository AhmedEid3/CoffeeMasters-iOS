//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 09/07/2023.
//

import SwiftUI

struct OffersPage: View {
  var body: some View {
    NavigationView {
      List {
        OfferView(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")

        OfferView(title: "Welcome Gift", description: "25% off on your first order.")
      }.navigationTitle("Offers")
    }
  }
}

struct OffersPage_Previews: PreviewProvider {
  static var previews: some View {
    OffersPage()
  }
}
