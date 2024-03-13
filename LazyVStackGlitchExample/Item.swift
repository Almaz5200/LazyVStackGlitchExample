//
//  Item.swift
//  LazyVStackGlitchExample
//
//  Created by Artem Trubacheev on 05.03.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
