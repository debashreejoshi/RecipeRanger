//
//  SplashScreenView.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 1/3/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var showingRecipesView = false // Added a state variable to control presentation
    
    var body: some View {
        ZStack {
            Image("splash_screen_image")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 6)
            
            VStack {
                Spacer()
                Text("Recipe Ranger")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $showingRecipesView, content: {
            RecipesView()
        })
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Delay presentation for 2 seconds
                showingRecipesView = true
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
