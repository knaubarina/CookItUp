//  Created by Arina Knaub on 11/06/2024.

import Foundation
import FirebaseFirestore

final class NetworkingServiceLive: NetworkingService {
    private let database = Firestore.firestore()
    
    func getRecipes() async throws -> [Recipe] {
        do {
            var recipes: [Recipe] = []
            let snapshot = try await database.collection(FirestoreCollection.recipes.rawValue).getDocuments()
            
            for document in snapshot.documents {
                let id = document.documentID
                let recipe = try await database.collection(FirestoreCollection.recipes.rawValue).document(id).getDocument(as: Recipe.self)
                recipes.append(recipe)
            }
            
            return recipes
        } catch {
            throw NetworkingServiceError.generic
        }
    }
    
    func getRecipes(for recipeType: RecipeType) async throws -> [Recipe] {
        do {
            var recipes: [Recipe] = []
            let snapshot = try await database.collection(FirestoreCollection.recipes.rawValue).whereField("recipeType", isEqualTo: recipeType.rawValue).getDocuments()
            
            for document in snapshot.documents {
                let id = document.documentID
                let recipe = try await database.collection(FirestoreCollection.recipes.rawValue).document(id).getDocument(as: Recipe.self)
                recipes.append(recipe)
            }
            
            return recipes
        } catch {
            throw NetworkingServiceError.generic
        }
    }
}
