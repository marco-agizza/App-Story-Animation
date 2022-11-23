//
//  ContentView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appStory: AppStoryViewModel
    var animation: Namespace.ID
    var body: some View {
        ScrollView{
            VStack{
                ZStack(alignment: Alignment (horizontal: .center, vertical: .top)){
                    Image(appStory.selectedStory.wallpaper)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                        .matchedGeometryEffect(id: appStory.selectedStory.wallpaper, in: animation)
                        .aspectRatio(contentMode: .fill)
                    HStack{
                        Spacer()
                        Button(action: {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.55, blendDuration: 0.8)){
                                appStory.show.toggle()
                            }
                        }) {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .padding()
                                .font(.system(size: 30))
                        }
                        .padding(.leading, 33)
                        .offset(y: -24)
                    }
                    VStack{
                        if appStory.selectedStory.type == .appArticle || appStory.selectedStory.type == .appFamilyCollection {
                            HStack{
                                VStack(alignment: .leading, spacing: 7.5){
                                    Text(appStory.selectedStory.subtitle.uppercased())
                                        .matchedGeometryEffect(id: appStory.selectedStory.subtitle, in: animation)
                                        .foregroundColor(.gray)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                        .padding(.top, 13)
                                    
                                    Text(appStory.selectedStory.title)
                                        .matchedGeometryEffect(id: appStory.selectedStory.title, in: animation)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                        .font(.title)
                                        .padding(.top, 4)
                                }
                                Spacer()
                            }
                            .padding(.horizontal, 20)
                        }
                        if appStory.selectedStory.type == .appOfTheDay {
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
                    .offset(y: 8)
                }
                if appStory.selectedStory.type == .appFamilyCollection {
                    AppBannerView(animation: animation, type: .multiple, appStory: appStory.selectedStory)
                        .padding(.bottom, 10)
                        .padding(.top, 20)
                        .matchedGeometryEffect(id: appStory.selectedStory.id, in: animation)
                }
                
                //Text("sdlajkhfdslkjahdslkjfhasdlkfjhasdlkfjha\nsdfkjhasdlfkjhsadflkjasndflasejufhasidufn\nbsadjfahsdlfasdklfashdiufphasdfoiasufghasdifuhsadfkjlashdfdipsufhweòijkfnasdlkjfhaisuephfsdlkjf")
                Spacer()
            }
            .offset(y: 25)
            .matchedGeometryEffect(id: appStory.selectedStory.type.hashValue, in: animation)

        }


        .ignoresSafeArea(.all, edges: .top)
    }
}
