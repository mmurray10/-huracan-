//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Murray on 5/26/23.
//

import SwiftUI

struct FruitDetailView: View {
        //: MARK: - PROPERTIES
        
        var fruit: Fruit
        
        //: MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
            // HEADER
        FruitHeaderView(fruit: fruit)
                    
                 VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headling)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                     FruitsNutrientsView(fruit: fruit)
                       
                        //SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            
                        
                        // LINK
                     SourceLinkView()
                         .padding(.top, 10)
                         .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
