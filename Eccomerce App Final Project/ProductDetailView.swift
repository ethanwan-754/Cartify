import SwiftUI

struct ProductDetailView: View {
    let product: ProductData

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                if let first = product.images?.first,
                   let url = URL(string: first) {
                    AsyncImage(url: url) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                }

                Text(product.title)
                    .font(.title)
                    .bold()

                Text(product.description ?? "No description")
                    .padding(.horizontal)

                Text("Price: $\(product.price)")
                    .font(.title3)
                    .bold()

                if let category = product.category?.name {
                    Text("Category: \(category)")
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
        .navigationTitle("Product Details")
    }
}

