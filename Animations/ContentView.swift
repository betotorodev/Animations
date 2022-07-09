//
//  ContentView.swift
//  Animations
//
//  Created by Beto Toro on 8/07/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var animationAmount = 0.0
  
  var body: some View {
    // Customizing animation
    
    //    Button("Tap Me") {
    //      // animationAmount += 1
    //    }
    //    .padding(50)
    //    .background(.red)
    //    .foregroundColor(.white)
    //    .clipShape(Circle())
    //    .overlay(
    //      Circle()
    //        .stroke(.red)
    //        .scaleEffect(animationAmount)
    //        .opacity(2 - animationAmount)
    //        .animation(
    //          .easeInOut(duration: 1)
    //          .repeatForever(autoreverses: false),
    //          value: animationAmount
    //        )
    //    )
    //    .onAppear {
    //      animationAmount = 2
    //    }
    
    // Animating bindings
    
    //    VStack {
    //        Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
    //
    //        Spacer()
    //
    //        Button("Tap Me") {
    //            animationAmount += 1
    //        }
    //        .padding(40)
    //        .background(.red)
    //        .foregroundColor(.white)
    //        .clipShape(Circle())
    //        .scaleEffect(animationAmount)
    //    }
    
    // explicit animation
    
    Button("Tap Me") {
      withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        animationAmount += 360
      }
    }
    .padding(50)
    .background(.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
