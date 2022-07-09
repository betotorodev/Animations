//
//  SwiftUIView.swift
//  Animations
//
//  Created by Beto Toro on 9/07/22.
//

import SwiftUI

struct AnimationsGestures: View {
  let letters = Array("Hello SwiftUI")
  @State private var enabled = false
  @State private var dragAmount = CGSize.zero
  
  
  var body: some View {
    //    LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
    //      .frame(width: 300, height: 200)
    //      .clipShape(RoundedRectangle(cornerRadius: 10))
    //      .offset(dragAmount)
    //      .gesture(
    //        DragGesture()
    //          .onChanged { dragAmount = $0.translation }
    //          .onEnded { _ in
    //          explicit animation
    //            withAnimation(.spring()) {
    //              dragAmount = .zero
    //            }
    //
    //          }
    //      )
    //   implicit animation
    //   .animation(.spring(), value: dragAmount)
    
    HStack(spacing: 0) {
      ForEach(0..<letters.count, id: \.self) { num in
        Text(String(letters[num]))
          .padding(5)
          .font(.title)
          .background(enabled ? .blue : .red)
          .offset(dragAmount)
          .animation(.default.delay(Double(num) / 20), value: dragAmount)
      }
    }
    .gesture(
      DragGesture()
        .onChanged { dragAmount = $0.translation }
        .onEnded { _ in
          dragAmount = .zero
          enabled.toggle()
        }
    )
  }
}

struct AnimationsGestures_Previews: PreviewProvider {
  static var previews: some View {
    AnimationsGestures()
  }
}
