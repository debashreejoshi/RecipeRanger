//
//  RecipeRowView.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 27/2/2023.
//

import SwiftUI

struct RecipeRowView: View {
    
    @ObservedObject var viewModel: RecipeRowViewModel
    
    var body: some View {
        
        HStack(spacing: 10) {
            AsyncImageView(url: viewModel.image)
                .frame(width: 80, height: 80)
                .cornerRadius(10)
                .accessibility(label: Text("Image of the \(viewModel.dynamicTitle) recipe"))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(viewModel.dynamicTitle)
                    .font(.headline)
                    .lineLimit(2)
                    .accessibility(label: Text(viewModel.dynamicTitle))
                
                Text(viewModel.dynamicDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .accessibility(label: Text(viewModel.dynamicDescription))
                
                HStack(spacing: 10) {
                    Image(systemName: "person.2.fill")
                        .foregroundColor(.gray)
                    Text("\(viewModel.amountNumber) people")
                        .foregroundColor(.gray)
                    
                    Image(systemName: "clock.fill")
                        .foregroundColor(.gray)
                    Text("\(viewModel.cookingTime)")
                        .foregroundColor(.gray)
                }
                .accessibilityElement(children: .combine)
                .accessibilityIdentifier("RecipeRow")
            }
        }
        .padding([.top,.bottom], 10)
    }
}

struct RecipeRowView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRowView(viewModel: RecipeRowViewModel(recipe: Recipe.sample))
    }
}


