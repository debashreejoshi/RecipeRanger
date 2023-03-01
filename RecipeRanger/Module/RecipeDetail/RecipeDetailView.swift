//
//  RecipeDetailView.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 27/2/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @ObservedObject var viewModel: RecipeDetailViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                AsyncImageView(url: viewModel.image)
                    .frame(maxWidth: .infinity)
                    .frame(height: 250)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .accessibility(label: Text("Image of the \(viewModel.recipe.dynamicTitle) recipe"))
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(viewModel.dynamicTitle)
                        .font(.title)
                        .fontWeight(.bold)
                        .accessibility(label: Text("Recipe name: \(viewModel.dynamicTitle)"))
                        .accessibilityIdentifier("ReceipeDetailsDynamicTitle")
                    
                    Text(viewModel.dynamicDescription)
                        .font(.body)
                        .accessibility(label: Text("Recipe description: \(viewModel.dynamicDescription)"))
                    
                    HStack(alignment: .top, spacing: 30) {
                        HStack(spacing: 5) {
                            Image(systemName: "person.2.fill")
                                .accessibility(label: Text("Serves"))
                            Text("\(viewModel.amountNumber) people")
                                .accessibility(label: Text("\(viewModel.amountNumber) people"))
                        }
                        HStack(spacing: 5) {
                            Image(systemName: "clock.fill")
                                .accessibility(label: Text("Cooking time"))
                            Text("\(viewModel.cookingTime)")
                                .accessibility(label: Text("Cooking time: \(viewModel.cookingTime)"))
                        }
                    }
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                    
                    Text("Ingredients:")
                        .font(.headline)
                        .accessibility(label: Text("Ingredients list"))
                       // .padding(.horizontal, 20)
                    
                    ForEach(viewModel.ingredients, id: \.id) { ingredient in
                        Text("• \(ingredient.ingredient)")
                            .accessibility(label: Text("\(ingredient.ingredient)"))
                            //.padding(.horizontal, 20)
                    }
                }
                .padding(.horizontal, 40)
            }
        }
        .navigationBarTitle("Recipe detail")
        .accessibility(label: Text("Recipe detail"))
        .accessibilityIdentifier("RecipeDetail")
        .padding(.vertical, 20)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(viewModel: RecipeDetailViewModel(recipe: Recipe.sample))
    }
}


