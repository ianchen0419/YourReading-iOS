//
//  StatusView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct StatusView: View {
    let book=Bundle.main.decode([BookItem].self, from: "book.json")
    
    
    var body: some View {
        NavigationView {

            List {
                Section(header: Text("已閱讀清單")){
                    ForEach(book){
                        item in
                        if(item.readStatus=="已閱讀"){
                          StatusItemView(item: item)
                        }
                    }
                }
            }
            .navigationBarTitle(
                Text("閱讀狀態"),
                displayMode: .inline
            )
            .listStyle(GroupedListStyle())
        }
        
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
