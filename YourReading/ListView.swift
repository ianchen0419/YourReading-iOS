//
//  ListView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    let category=Bundle.main.decode([CategoryItem].self, from: "category.json")
//    let book=Bundle.main.decode([BookItem].self, from: "book.json")
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("")){
                    ForEach(category){
                        item in
                        NavigationLink(destination: ListDetailView(item: item)){
                            Text(item.label)
                        }
                        
                    }
                }
                
//                Section(header: Text("")){
//                    NavigationLink(destination: ListDetailAddView()) {
//                            Text("123")
//                        }
//                }
                
            }
            .navigationBarTitle(
                Text("我的書單"),
                displayMode: .inline
            )
            .listStyle(GroupedListStyle())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
