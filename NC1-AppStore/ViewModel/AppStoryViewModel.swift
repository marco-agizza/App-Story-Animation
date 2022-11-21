//
//  AppStoryViewModel.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

class AppStoryViewModel: ObservableObject{
    @Published var apps : [AppStory]
    
    
    init(){
        apps = appStoryData
    }
}
