//
//  ContentView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let book=Bundle.main.decode([BookItem].self, from: "book.json")
    
    var body: some View {
        NavigationView {
        
            VStack {
                HStack(spacing: 30.0) {
                    //TODO: 一個HStack只能放3個Image
                    //可能不能用ForEach
                    ForEach(book) {
                        item in
                        
                        NavigationLink(destination: ContentDetailView(item: item)){
                            Image(item.ISBN_13)
                            .resizable()
                            .scaledToFit()
                            .shadow(color: Color.black.opacity(0.2),radius: 1.5,x: 0,y: 3)
                            .shadow(color: Color.black.opacity(0.2),radius: 2,x: 0,y: 2)
                            .shadow(color: Color.black.opacity(0.2),radius: 4,x: 0,y: 1)
                        }
                        .buttonStyle(PlainButtonStyle())
                            

                    }
                    
                }
                .padding(.all)
                .frame(maxWidth: .infinity)
                
                Spacer()
            }
            .navigationBarTitle(
                Text("首頁"),
                displayMode: .inline
            )
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
