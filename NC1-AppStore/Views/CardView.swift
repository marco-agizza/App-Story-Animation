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
                                        .matchedGeometryEffect(id: appStory.subtitle, in: animation)
                                    Text(appStory.title)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                        .font(.title)
                                        .matchedGeometryEffect(id: appStory.title, in: animation)
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
                        Spacer()
                    }
                if appStory.type == .appFamilyCollection {
                    AppBannerView(animation: animation, type: .multiple, appStory: appStory)
                        .padding(.bottom, 10)
                        .matchedGeometryEffect(id: appStory.id, in: animation)
                }
            }
            .background(color == .light ? .white : Color.primary.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal)
            .padding(.top)
            .matchedGeometryEffect(id: appStory.type.hashValue, in: animation)
        } //else if...
    }
}
