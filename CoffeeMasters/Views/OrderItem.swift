//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 11/07/2023.
//

import SwiftUI

struct OrderItem: View {
  var item: (Product, Int)
  
  @EnvironmentObject var cartManager:CartManager

  var body: some View {
    HStack{
      Text("\(item.1) x ")
      Spacer()
      Text(item.0.name)
      Spacer()
      Text("$ \(Double(item.1)*item.0.price, specifier: "%.2f")")
      Image(systemName: "trash")
        .font(.title)
        .foregroundColor(Color("Secondary"))
        .padding()
        .onTapGesture {
          cartManager.remove(product: item.0)
        }
    }
  }
}

struct OrderItem_Previews: PreviewProvider {
  static var previews: some View {
    OrderItem(item: (Product(id: 1, name: "Coffee", price: 3.50, description: "Coffee Description", image: "cofee.png"), 3)
    ).environmentObject(CartManager())
  }
}
