//
//  AppBannerView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 18/11/22.
//

import SwiftUI

enum AppBannerType {
    case single, multiple
}

// AmericanoFun
struct AppBannerView: View {
    var animation: Namespace.ID
    let type : AppBannerType
    let appStory: AppStory
    
    var body: some View {
        HStack{
            if type == .multiple {
                Spacer()
                ForEach(0 ..< 4){ index in
                    Image(appStory.appStoreApps[index].icon)
                        .resizable()
                        .cornerRadius(7)
                        .frame(width: 60, height: 60)
                    if index < 3 {
                        Spacer()
                    }
                }
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

/*struct AppBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AppBannerView(type: .multiple, apps: appsData)
    }
}*/
