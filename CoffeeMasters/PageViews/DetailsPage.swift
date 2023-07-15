//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 09/07/2023.
//

import SwiftUI

struct DetailsPage: View {
  var product: Product
  @State var quantity = 1
  
  @EnvironmentObject var cartManager: CartManager
  @Environment(\.dismiss) var dismiss

  var body: some View {
    ScrollView {
      HStack {
        Text(product.name)
          .font(.title)
          .frame(maxWidth: .infinity)
          .multilineTextAlignment(.leading)
          .padding(.leading)

        Spacer()
      }

      AsyncImage(url: product.imageURL)
        .cornerRadius(10)
        .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)

      Text(product.description).frame(maxWidth: .infinity)
        .multilineTextAlignment(.leading).padding(24)

      HStack {
        Text("$ \(product.price, specifier: "%.2f")")

        Stepper(value: $quantity, in: 1 ... 10) {}
      }.frame(maxWidth: .infinity)
        .padding(30)

      Text("Subtotal $\(Double(quantity) * product.price, specifier: "%.2f")")
        .fontWeight(.bold)
        .padding(12)

      Button("Add \(quantity) to Cart") {
        cartManager.add(product: product, quantity: quantity)
        dismiss()
      }.padding()
        .frame(width: 250)
        .background(Color("Alternative2"))
        .foregroundColor(Color.black)
        .cornerRadius(25)
    }
  }
}

struct DetailsPage_Previews: PreviewProvider {
  static var previews: some View {
    DetailsPage(product: Product(
      id: 1,
      name: "Coffee",
      price: 10.0,
      description: "Coffee",
      image: "DummyImage"
    )).environmentObject(CartManager())
  }
}
