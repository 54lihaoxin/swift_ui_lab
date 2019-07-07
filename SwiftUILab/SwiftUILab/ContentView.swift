//
//  ContentView.swift
//  SwiftUILab
//
//  Created by Haoxin Li on 7/7/19.
//  Copyright © 2019 Haoxin Li. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var rooms: [Room] = []
    var body: some View {
        NavigationView {
            List(rooms) { room in
                NavigationButton(destination: Text(room.name)) {
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
