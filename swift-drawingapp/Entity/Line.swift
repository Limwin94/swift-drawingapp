//
//  Line.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import UIKit

struct Line: DrawingObject, RandomColorRenerator {
  var id: Int {
    self.hashValue
  }
  
  var path: [Point]
  var color: RandomSystemColor {
    .init()
  }
}

extension Line: Hashable {
  static func == (lhs: Line, rhs: Line) -> Bool {
      return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(self.path)
  }
}
