//
//  Database.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

let disneyPlusApp = AppStoreApp(
    icon: "DisneyPlusIcon",
    name: "Disney+",
    provider: "Disney Electronic Content, Inc.",
    visitCount: 0,
    category: .Entertainment)

let netflixApp = AppStoreApp(
    icon: "NetflixIcon",
    name: "Netflix",
    provider: "Netflix, Inc.",
    visitCount: 0,
    category: .Entertainment)

let primeVideoApp = AppStoreApp(
    icon: "AmazonPrimeVideoIcon",
    name: "Amazon Prime Video",
    provider: "AMZN Mobile LLC",
    visitCount: 0,
    category: .Entertainment)

let appleTvApp = AppStoreApp(
    icon: "AppleTvIcon",
    name: "Apple TV",
    provider: "Apple Distribution International",
    visitCount: 0,
    category: .Entertainment)

let appsData = [
    disneyPlusApp,
    netflixApp,
    primeVideoApp,
    appleTvApp
]
