//
//  Database.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

let disneyPlusApp = AppStoreApp(
    category: .Entertainment,
    icon: "DisneyPlusIcon",
    name: "Disney+",
    provider: "Disney Electronic Content, Inc."
)

let netflixApp = AppStoreApp(
    category: .Entertainment,
    icon: "NetflixIcon",
    name: "Netflix",
    provider: "Netflix, Inc."
)

let primeVideoApp = AppStoreApp(
    category: .Entertainment,
    icon: "AmazonPrimeVideoIcon",
    name: "Amazon Prime Video",
    provider: "AMZN Mobile LLC"
)

let appleTvApp = AppStoreApp(
    category: .Entertainment,
    icon: "AppleTvIcon",
    name: "Apple TV",
    provider: "Apple Distribution International"
)

let appsData = [
    disneyPlusApp,
    netflixApp,
    primeVideoApp,
    appleTvApp
]

let appStoryData = [
    AppStory(type: .appFamilyCollection, subtitle: "What to watch", title: "Stream these family friendly hits", description: "Meet the game makers who are thinking green", wallpaper: "ManWatchingTv", appStoreApps: appsData)
]
