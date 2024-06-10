//  Created by Arina Knaub on 02/06/2024.

import SwiftUI

struct TabBarView: View {
    
    @State private var currentSelection: TabBarItem = .home
    
    var body: some View {
        NavigationStack {
            TabView(selection: $currentSelection) {
                HomeView()
                    .tabItem {
                        Image(currentSelection == .home ? .homeSelected : .home)
                    }
                    .tag(TabBarItem.home)
                
                SearchView()
                    .tabItem {
                        Image(currentSelection == .search ? .searchSelected : .search)
                    }
                    .tag(TabBarItem.search)
                
                FavoritesView()
                    .tabItem {
                        Image(currentSelection == .favorites ? .favoritesSelected : .favorites)
                    }
                    .tag(TabBarItem.favorites)
                
                ProfileView()
                    .tabItem {
                        Image(currentSelection == .profile ? .profileSelected : .profile)
                    }
                    .tag(TabBarItem.profile)
            }
            .navigationDestination(for: Int.self) { recipe in
                RecipeInfoView()
            }
        }
        .tint(.neutral01)
    }
}

#Preview {
    TabBarView()
}
