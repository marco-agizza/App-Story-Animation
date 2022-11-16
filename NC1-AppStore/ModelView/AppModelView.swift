//
//  ApplicationModelView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import Foundation

class Application: ObservableObject{
    @Published var apps : [AppStoreApp] = []
    
    
    init(){
        apps = appsData
    }
}
