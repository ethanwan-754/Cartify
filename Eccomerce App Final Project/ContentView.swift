import SwiftUI

struct ContentView: View {
    @State private var search = ""
    @State private var go = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Cartify")
                    .bold()
                TextField("Search for a product...", text: $search)
                    .textFieldStyle(.roundedBorder)
                    .padding()

                Button("Search") {
                    if !search.isEmpty {
                        go = true
                    }
                }
                .buttonStyle(.borderedProminent)

            }
            .navigationDestination(isPresented: $go) {
                ResultsView(query: search)
            }
        }
    }
}
