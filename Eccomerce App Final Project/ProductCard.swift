//
//  ProductCard.swift
//  Eccomerce App Final Project
//
//  Created by Ethan Wan on 12/2/25.
//

import SwiftUI

struct ProductCard: View {
    let product: ProductData

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            if let firstURL = product.images?.first,
               let url = URL(string: firstURL) {
                AsyncImage(url: url) { image in
                    image.resizable().scaledToFit()
                } placeholder: {
                    Rectangle().fill(.gray.opacity(0.3))
                }
                .frame(height: 180)
                .cornerRadius(10)
            }
            Text(product.title)
                .font(.headline)
            Text(product.description ?? "No description")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("$\(product.price)")
                .bold()

            if let category = product.category?.name {
                Text("Category: \(category)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

