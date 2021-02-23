//
//  AppView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("首頁")
                }
            
            StatusView()
                .tabItem {
                    Image(systemName: "book")
                    Text("閱讀狀態")
                }
            
            ListView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("我的清單")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
