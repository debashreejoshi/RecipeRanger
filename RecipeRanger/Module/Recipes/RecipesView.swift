//
//  RecipesView.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 27/2/2023.
//

import SwiftUI

struct RecipesView: View {
    
    @ObservedObject var viewModel: RecipesViewModel
    
    init(viewModel: RecipesViewModel = RecipesViewModel()) {
        self.viewModel = viewModel
    }
        
    var body: some View {
        NavigationView {
            List(viewModel.recipes, id: \.dynamicTitle) { recipe in
                NavigationLink(destination: RecipeDetailView(viewModel: RecipeDetailViewModel(recipe: recipe))) {
                    RecipeRowView(viewModel: RecipeRowViewModel(recipe: recipe))
                }
                .accessibilityElement()
                .accessibility(label: Text("\(recipe.dynamicTitle)"))
            }
            .accessibilityIdentifier("RecipeList")
            .navigationTitle("Recipes")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            viewModel.loadRecipes()
        }
    }
}


struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}





