//
//  ContentDetailView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/20.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct ContentDetailView: View {
    
    @State private var showDeleteConfirm=false
    
    var item: BookItem
    
    var body: some View {
                    
        List{
            
            Section {
                Image(item.ISBN_13)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 280)
                    .clipped()
                    .listRowInsets(.init())
                
                HStack {
                    Text("書名").font(.headline)
                    Spacer()
                    Text(item.title)
                }
                HStack {
                    Text("ISBN").font(.headline)
                    Spacer()
                    Text(item.ISBN_13)
                }
                HStack {
                    Text("作者").font(.headline)
                    Spacer()
                    Text(item.authors.joined(separator: "、"))
                }
                HStack {
                    Text("所屬書單").font(.headline)
                    Spacer()
                    Text(item.category.joined(separator: "、"))
                }
                HStack {
                    Text("出版日期").font(.headline)
                    Spacer()
                    Text(item.publishedDate)
                }
                HStack {
                    Text("狀態").font(.headline)
                    Spacer()
                    Text(item.readStatus)
                }
                HStack {
                    Text("閱讀開始日").font(.headline)
                    Spacer()
                    Text(item.startRead)
                }
                HStack {
                    Text("閱讀結束日").font(.headline)
                    Spacer()
                    Text(item.endRead)
                }
            }
            
            Section {
                HStack {
                    Button(action: {}) {
                        Text("刪除")
                        .foregroundColor(Color.red)
                    }
                    .frame(maxWidth: .infinity)
//
                    Button(action: {}) {
                        Text("分享")
                    }
                    .frame(maxWidth: .infinity)
                    
//                    Button("分享") {
//
//                    }
                    
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(
            Text(item.title),
            displayMode: .inline
        )
        .alert(isPresented: $showDeleteConfirm) {
            Alert(
                title: "123",
                message: "123123123",
                dismissButton: .default(Text("OK"))
            )
        }
        
        
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentDetailView(item: BookItem.example)
        }
        
    }
}
