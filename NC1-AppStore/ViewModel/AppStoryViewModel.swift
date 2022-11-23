//
//  AppStoryViewModel.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

class AppStoryViewModel: ObservableObject{
    @Published var apps : [AppStory]
    @Published var selectedStory = AppStory(type: .appFamilyCollection, subtitle: "", title: "", description: "", wallpaper: "", appStoreApps: [])
    @Published var show = false
    
    init(){
        apps = appStoryData
    }
}
