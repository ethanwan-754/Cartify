import Foundation

struct ProductData: Codable, Identifiable, Equatable, Hashable {
    let id: Int
    let title: String
    let slug: String?
    let price: Int
    let description: String?
    let category: Category?
    let images: [String]?
}

struct Category: Codable, Equatable, Hashable {
    let id: Int
    let name: String
    let image: String?
    let slug: String?
}
