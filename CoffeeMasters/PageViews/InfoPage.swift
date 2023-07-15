//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Ahmed Eid on 09/07/2023.
//

import SwiftUI

struct InfoPage: View {
  var body: some View {
    VStack {
      VStack {
        Text("Info Page")
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundColor(Color.purple)
          .multilineTextAlignment(.center)
          .padding(.all, 50.0)
          .background(.green)
          .padding()
          .border(Color.red, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)

        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
          /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
      }
    }.padding()
  }
}

struct InfoPage_Previews: PreviewProvider {
  static var previews: some View {
    InfoPage()
  }
}
