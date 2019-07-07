//
//  SFSymbolName.swift
//  SwiftUILab
//
//  Created by Haoxin Li on 7/7/19.
//  Copyright © 2019 Haoxin Li. All rights reserved.
//

import SwiftUI

enum SFSymbolName: String {
    case photo
}

extension SFSymbolName {
    var image: Image {
        return Image(systemName: rawValue)
    }
}
