//
//  Application.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

enum AppCategory{
    case AppleWatchApps, ARApps, Books, Business, DeveloperTools, Education, Entertainment, Finance, FoodDrink,
    GraphicDesign, HealthFitness, Kids, Lifestyle, MagazinesNewspapers, Medical, Music, Navigation, News, PhotoVideo,
    Productivity, Reference, SafariExtensions, Shopping, SocialNetwork, Sports, Travel, Utilities, Weather
}

struct AppStoreApp: Identifiable {
    let id = UUID()
    var icon: String
    var name: String
    var provider: String
    var visitCount: Int
    var category: AppCategory
}
