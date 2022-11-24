//
//  ContentView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @Environment (\.colorScheme) var color
    @ObservedObject var appStory: AppStoryViewModel
    @State var showDescription: Bool = false
    @State var scale: CGFloat = 1
    var animation: Namespace.ID
    
    var body: some View {
        if appStory.show {
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
                                self.showDescription.toggle()
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
                            .padding(.bottom, 5)
                            .padding(.top, 20)
                            .matchedGeometryEffect(id: appStory.selectedStory.id, in: animation)
                    }
                    if showDescription {
                        Divider()
                        AppStoryBodyView(animation: animation, appStory: appStory.selectedStory)
                    }
                    Spacer()
                }
                .offset(y: 25)
                .matchedGeometryEffect(id: appStory.selectedStory.type.hashValue, in: animation)
                .onAppear() {
                    Timer.scheduledTimer(withTimeInterval: 0.7, repeats: false) { _ in
                        withAnimation {
                            self.showDescription.toggle()
                        }
                    }
                }
            }
            .scaleEffect(scale)
            .gesture(DragGesture(minimumDistance: 1).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
            .ignoresSafeArea(.all, edges: .top)
            .background(color == .light ? .white : Color.primary.opacity(0.1))
        }
    }
    
    func onChanged(value: DragGesture.Value){
        let scale = value.translation.height / UIScreen.main.bounds.height
        if 1 - scale > 0.7 && scale > 0{
            self.scale = 1 - scale
        } else if 1 - scale <= 0.7 {
            self.showDescription.toggle()
            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.55, blendDuration: 0.8)){
                appStory.show.toggle()
            }
        }
    }
    
    func onEnded(value: DragGesture.Value){
        if scale < 0.9{
            self.showDescription.toggle()
            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.55, blendDuration: 0.8)){
                appStory.show.toggle()
            }
        }
        scale = 1
    }
}
