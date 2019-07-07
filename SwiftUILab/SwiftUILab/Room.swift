//
//  Room.swift
//  SwiftUILab
//
//  Created by Haoxin Li on 7/7/19.
//  Copyright © 2019 Haoxin Li. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    let id = UUID()
    var name: String
    var capacity: Int
    var hasVideo = false
    
    var imageName: String { name }
    var thumbnailName: String { name + "_Thumbnail" }
}

#if DEBUG
extension Room {
    static var testRooms: [Room] {
        return [
            Room(name: "101", capacity: 10, hasVideo: true),
            Room(name: "280", capacity: 28, hasVideo: false),
            Room(name: "880", capacity: 88, hasVideo: true),
        ]
    }
}
#endif
