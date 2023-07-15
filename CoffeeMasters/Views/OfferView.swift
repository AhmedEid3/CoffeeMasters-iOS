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
    ZStack {
      Image("BackgroundPattern")
        .frame(maxWidth: .infinity, maxHeight: 200)
        .clipped()

      VStack {
        Text(title)
          .font(.title)
          .padding()
          .background(Color("CardBackground"))

        Text(description)
          .font(.body)
          .padding()
          .background(Color("CardBackground"))
      }
    }
  }
}

struct OfferView_Previews: PreviewProvider {
  static var previews: some View {
    OfferView(title: "My Offer",
              description: "This is description of Offer!")
  }
}
