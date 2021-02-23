//
//  ListDetailAddView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/20.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct ListDetailAddView: View {
    
    @State private var tempAddBooks=["泣ける!ミステリー 父と子の物語"]
    @State private var status1=false
    //status2
    //status3

    var body: some View {
        
        Form {
            Section {
                ForEach(tempAddBooks, id: \.self){
                    book in
                    
//                    Toggle(book, isOn: self.$status1)
                    
                    Button(action: {
                        //click的話下面的兩個Image會切換
                    }) {
                        HStack(){
    //                        Image(systemName: "checkmark.circle.fill").font(.system(size: 22))
                            Image(systemName: "circle")
                                .font(.system(size: 22))
                                .foregroundColor(Color.gray.opacity(0.4))
                            Text(book)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                }
                
                
            }
            
            
        }
        .navigationBarTitle(
            Text("添加書目"),
            displayMode: .inline
        )
        .listStyle(GroupedListStyle())
    }
}

struct ListDetailAddView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ListDetailAddView()
        }
    }
}
