//
//  Status.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI

struct BookItem: Codable, Equatable, Identifiable {
    var id: UUID
    var readStatus: String
    var ISBN_13: String
    var title: String
    var authors: [String]
    var publishedDate: String
    var startRead: String
    var endRead: String
    var category: [String]
    var description: String
    var thumbnail_url: String
    
    #if DEBUG
    static let example = BookItem(
        id: UUID(),
        readStatus: "已閱讀",
        ISBN_13: "9784473043306",
        title: "マボロシの茶道具図鑑",
        authors: ["依田徹"],
        publishedDate: "2019-10",
        startRead: "2020-01-01",
        endRead: "2020-02-02",
        category: ["周董推薦"],
        description: "失われている、あるいは、所蔵者不明の名品など、もう「見られない」=「マボロシ」の茶道具をイラストを交え、図鑑風に紹介します。",
        thumbnail_url: "http://books.google.com/books/content?id=L9kbygEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api"
    )
    #endif
}
