//
//  Transitions.swift
//  Animations
//
//  Created by Beto Toro on 9/07/22.
//

import SwiftUI

struct Transitions: View {
  
  @State private var isShowingRed = false
  
  var body: some View {
    VStack {
      Button("Tap Me") {
        withAnimation {
          isShowingRed.toggle()
        }
        
      }
      
      if isShowingRed {
        Rectangle()
          .fill(.red)
          .frame(width: 200, height: 200)
          .transition(.asymmetric(insertion: .scale, removal: .opacity))
      }
    }
  }
}

struct Transitions_Previews: PreviewProvider {
  static var previews: some View {
    Transitions()
  }
}
