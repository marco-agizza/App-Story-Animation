//
//  AppStory.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 21/11/22.
//

import Foundation

enum CardType {
    case appArticle //BackgroundImage, Title, Subtitle, Description
    case appOfTheDay //BackgroundImage, FeaturedTitleLabel
    case appListCollection //Title, Subtitle, AppsList
    case appSetCollection //Title, Subtitle, AppsList
    case appFamilyCollection //BackgorundImage, Title, Subtitle, AppsList
}

struct AppStory: Identifiable {
    let id = UUID()
    let type: CardType
    let subtitle, title, wallpaper: String
    let description: [String]
    let appStoreApps: [AppStoreApp]
}
