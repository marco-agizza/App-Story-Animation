//
//  TodayView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 17/11/22.
//

import SwiftUI

struct TodayView: View {
    @Environment (\.colorScheme) var color
    @ObservedObject var appStoryViewModel = AppStoryViewModel()
    var animation: Namespace.ID
    
    var body: some View {
        //NavigationStack {
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
                    ForEach(appStoryViewModel.apps){ app in
                        CardView(animation: animation, appStory: app)
                    }
                }
            }
            .padding(.top, 1)
            .background(color == .light ? Color.primary.opacity(0.1) : .black)
            
        }
        //.padding(.top, 1)
    //}
    
}


