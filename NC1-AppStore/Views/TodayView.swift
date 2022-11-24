//
//  TodayView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 17/11/22.
//

import SwiftUI

struct TodayView: View {
    @Environment(\.colorScheme) var color
    @EnvironmentObject var appStory: AppStoryViewModel
    var animation: Namespace.ID
    
    var body: some View {
            ScrollView {
                LazyVStack{
                    HStack(alignment: .bottom){
                        VStack(alignment: .leading){
                            Text(Date.now, format: .dateTime.weekday(.wide).day().month(.wide))
                                .foregroundColor(.gray)
                                .textCase(.uppercase)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Today")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Button(
                            action: {
                                
                            },
                            label: {
                                Image(systemName: "person.circle")
                                    .font(.largeTitle)
                            }
                        )
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 1)
                    ForEach(appStory.apps){ app in
                        if !appStory.show {
                            CardView(animation: animation, appStory: app)
                                .onTapGesture {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.55, blendDuration: 0.8)){
                                        appStory.selectedStory = app
                                        appStory.show.toggle()
                                    }
                                }
                        }
                    }
                }
            }
            .padding(.top, 1)
            .background(color == .light ? Color.primary.opacity(0.1) : .black)
        }
}
