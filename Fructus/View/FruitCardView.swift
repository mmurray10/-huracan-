//
//  FruitCardView.swift
//  Fructus
//  Created by Murray on 5/15/23.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - PROPERTIES
    
  // MARK: - BODY
    
    var body: some View {
        VStack{
            VStack(spacing: 20) {
              // FRUIT: IMAGRE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity:0.15), radius: 9, x: 6, y: 8)
                // FRUIT: TITLE
              Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,
                      opacity: 0.15), radius: 2, x: 2, y: 2)
                
              // FRUIT: HEADLINE
                Text("Blueberries are are sweet, nutritious and widely popular fruit all over the world.")
                    .foregroundColor(Color.white )
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 400)
                
              // Button: START
                StartButtonView()
                
            }//: VSTACK
        } //: ZSTACK
        .frame( maxWidth: .infinity,
               maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors:
            [Color("ColorBlueberryLight"),
             Color("ColorBlueberryDark")]), startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(15)
        .ignoresSafeArea()
    }
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 220, height: 340))
    }
}
