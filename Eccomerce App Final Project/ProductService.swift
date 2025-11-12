
import Foundation

class ProductService {
    func getData() async throws -> [ProductData] {
        
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/products") else {
            throw URLError(.badURL)
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let response = try JSONDecoder().decode([ProductData].self, from : data)
                    
                    return response
        } catch let error as URLError {
            print("Network error: \(error.localizedDescription)")
            throw error
        } catch let error as DecodingError {
            switch error {
            case .typeMismatch(_, let context):
                print(context.debugDescription)
            case .valueNotFound(_, let context):
                print(context.debugDescription)
            case .keyNotFound(_, let context):
                print(context.debugDescription)
            case .dataCorrupted(let context):
                print(context.debugDescription)
            @unknown default:
                print(error.localizedDescription)
            }
            throw error
        } catch {
            print(error.localizedDescription)
            throw error

        }
       
    }
    }
