import SwiftUI

struct ResultsView: View {
    let query: String

    @State private var allProducts: [ProductData] = []
    @State private var filtered: [ProductData] = []
    @State private var isLoading = true
    @State private var errorMessage: String?

    private let service = ProductService()

    var body: some View {
        List(filtered) { product in
            NavigationLink(value: product) {
                ProductCard(product: product)
            }
        }
        .navigationDestination(for: ProductData.self) { product in
            ProductDetailView(product: product)
        }
        .task { await loadData() }
        .navigationTitle("Results")
    }

    private func loadData() async {
        isLoading = true
        do {
            let products = try await service.getData()
            self.allProducts = products
            filter()
        } catch {
            self.errorMessage = error.localizedDescription
        }
        isLoading = false
    }

    private func filter() {
        let q = query.lowercased()

        filtered = allProducts.filter { product in
            product.title.lowercased().contains(q) ||
            (product.description?.lowercased().contains(q) ?? false) ||
            (product.category?.name.lowercased().contains(q) ?? false)
        }
    }
}
