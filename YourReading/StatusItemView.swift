//
//  StatusItemView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct StatusItemView: View {
    var item: BookItem
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.ISBN_13)
            VStack(alignment: .leading) {
                Text(item.title).font(.headline)
                Text(item.authors.joined(separator: "、"))
                    .font(.subheadline)
                    .padding(.top, 3.0)
                    
            }
            
        }
        .padding(.vertical, 5.0)
        
        
    }
}

struct StatusItemView_Previews: PreviewProvider {
    static var previews: some View {
        StatusItemView(item: BookItem.example)
    }
}
