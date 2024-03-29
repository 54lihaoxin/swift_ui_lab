//
//  ContentView.swift
//  SwiftUILab
//
//  Created by Haoxin Li on 7/7/19.
//  Copyright © 2019 Haoxin Li. All rights reserved.
//

/*
 This is a demo as shown in WWDC 2019 session 204,
 Introducing SwiftUI: Building Your First App:
 https://developer.apple.com/videos/play/wwdc2019/204/
*/

import SwiftUI

struct ContentView : View {
    var rooms: [Room] = []
    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(rooms: Room.testRooms)
    }
}
#endif

struct RoomCell : View {
    let room: Room
    var body: some View {
        return NavigationButton(destination: Text(room.name)) {
            Image(room.thumbnailName)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
