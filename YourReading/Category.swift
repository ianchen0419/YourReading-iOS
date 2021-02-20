//
//  List.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct CategoryItem: Codable, Identifiable {
    var id: UUID
    var label: String
    
    #if DEBUG
    static let example = CategoryItem(
        id: UUID(),
        label: "周董推薦"
    )
    #endif
}
