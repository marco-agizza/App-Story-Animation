//
//  AppStoryBodyView.swift
//  NC1-AppStore
//
//  Created by Marco Agizza on 23/11/22.
//

import SwiftUI

struct AppStoryBodyView: View {
    var animation: Namespace.ID
    let appStory: AppStory
    
    var body: some View {
        Text("""
            **There's nothing quite like** \
            spending some quality time with family, all cosied up and enjoying a great movie or series together.\
            So get the popcorn ready and settle in front of the screen with these fantastic family friendly picks.\n\n\
            **Costume Quest** \n\
            Imagination is the weapon of choice against monsters invading the town of Auburn Hollow. Join Wren, Reynold,\
            Everett and Luew as they turn into
            """)
        .padding()
        .font(.body)
        .font(.system(size: 22))
    }
}

/*
 struct AppStoryBodyView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoryBodyView()
    }
}
*/
