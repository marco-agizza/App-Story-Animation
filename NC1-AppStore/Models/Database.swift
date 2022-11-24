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
    AppStory(
        type: .appFamilyCollection,
        subtitle: "What to watch",
        title: "Stream these family friendly hits",
        wallpaper: "ManWatchingTv",
        description: [
                        """
                        There's nothing quite like
                        """,
                        """
                        spending some quality time with family, all cosied up and enjoying a great movie or series together. So get the popcorn ready and settle in front of the screen with these fantastic family friendly picks.
                        """,
                        """
                        Costume Quest
                        """,
                        """
                        Imagination is the weapon of choice against monsters invading the town of Auburn Hollow. Join Wren, Reynold, Everett and Luew as they turn into
                        """
                     ],
        appStoreApps: appsData)
]
