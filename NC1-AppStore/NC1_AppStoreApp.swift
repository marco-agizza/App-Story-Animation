//
//  NC1_AppStoreApp.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import SwiftUI

@main
struct NC1_AppStoreApp: App {
    @Namespace var animation
    var body: some Scene {
        WindowGroup {
            TabView{
                TodayView(animation: animation)
                    .tabItem{
                        Label("Today", systemImage: "doc.text.image")
                    }
                Text("The Games screen is empty")
                    .tabItem{
                        Label("Games", systemImage: "gamecontroller.fill")
                    }
                Text("The Apps screen is empty")
                    .tabItem{
                        Label("Apps", systemImage: "square.stack.3d.up.fill")
                    }
                Text("The Arcade screen is empty")
                    .tabItem{
                        Label("Arcade", systemImage: "questionmark.circle.fill")
                    }
                Text("The Search screen is empty")
                    .tabItem{
                        Label("Search", systemImage: "magnifyingglass")
                    }
            }
        }
    }
}
