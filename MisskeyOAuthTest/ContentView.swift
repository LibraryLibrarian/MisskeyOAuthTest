//
//  ContentView.swift
//  MisskeyOAuthTest
//
//  Created by Librarian on 2024/05/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        TabView {
            OAuthView(viewModel: OAuthViewModel())
                .tabItem {
                    Image(systemName: "house")
                    Text("OAuth")
                }
            MiAuthView(viewModel: MiAuthViewModel())
                .tabItem {
                    Image(systemName: "gear")
                    Text("MiAuth")
                }
        }
        #elseif os(macOS)
        NavigationView {
            List {
                NavigationLink(destination: OAuthView(viewModel: OAuthViewModel())) {
                    Label("OAuth", systemImage: "house")
                }
                NavigationLink(destination: MiAuthView(viewModel: MiAuthViewModel())) {
                    Label("MiAuth", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            Text("Select an item")
        }
        #endif
    }
}

#Preview {
    ContentView()
}
