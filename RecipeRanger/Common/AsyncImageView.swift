//
//  AsyncImageView.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 28/2/2023.
//

import SwiftUI

struct AsyncImageView: View {
    let url: URL?
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
    }
}
