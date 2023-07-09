//
//  OfferView.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 09/07/2023.
//

import SwiftUI

struct OfferView: View {
  var title = ""
  var description = ""
  
  var body: some View {
    VStack {
      Text(title).padding().font(.title)
      Text(description).font(.body)
    }
  }
}

struct OfferView_Previews: PreviewProvider {
  static var previews: some View {
    OfferView(title: "My Offer", description: "This is description of Offer!")
  }
}
