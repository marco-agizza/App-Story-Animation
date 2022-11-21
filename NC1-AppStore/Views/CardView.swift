//
//  CardView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 16/11/22.
//

import SwiftUI

enum CardTransitionType {
    case presentation
    case dismissal
}

struct CardView: View {
    @Environment (\.colorScheme) var color
    var animation: Namespace.ID
    let appStory: AppStory
    
    
    var body: some View {
        if appStory.type == .appArticle || appStory.type == .appOfTheDay || appStory.type == .appFamilyCollection {
            VStack{
                Image(appStory.wallpaper)
                    .resizable()
                    //.frame(width: 350, height: 400, alignment: .center)
                    .frame (width: UIScreen.main.bounds.width - 30, height: 400)
                    .matchedGeometryEffect(id: appStory.wallpaper, in: animation)
                    .aspectRatio(contentMode: .fill)
                    .overlay{
                        if appStory.type == .appArticle || appStory.type == .appFamilyCollection {
                            HStack{
                                VStack(alignment: .leading, spacing: 7.5){
                                    Text(appStory.subtitle.uppercased())
                                        .foregroundColor(.gray)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                    Text(appStory.title)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                        .font(.title)
                                    Spacer()
                                }
                                .padding(.top, 15)
                                Spacer()
                            }
                            .padding(.horizontal, 20)
                            
                        }
                        if appStory.type == .appOfTheDay {
                            HStack{
                                VStack(alignment: .leading, spacing: -13.5){
                                    Spacer()
                                    Text("app".uppercased())
                                    Text("of the".uppercased())
                                    Text("day".uppercased())
                                    
                                }
                                .font(.system(size: 43))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.top, 15)
                                .padding(.bottom, 70)
                                Spacer()
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    
                if appStory.type == .appFamilyCollection {
                    if appStory.type == .appFamilyCollection {
                        AppBannerView(type: .multiple, apps: appStory.appStoreApps)
                            .padding(.bottom, 10)
                            .matchedGeometryEffect(id: appStory.id, in: animation)
                    }
                }
            }
            //.background(Color(UIColor.secondarySystemBackground))
            .background(color == .light ? .white : Color.primary.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal)
            .padding(.top)
        } //else if
    }
}
