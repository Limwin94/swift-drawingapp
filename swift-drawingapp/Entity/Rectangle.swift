//
//  Rectangle.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

struct Rectangle: DrawingObject, RandomColorRenerator {
  var id: Int {
    self.hashValue
  }
  var path: [Point]
  
  let width: UInt = 100
  let height: UInt = 100
  var color: RandomSystemColor {
    .init()
  }
}

extension Rectangle: Hashable {
  static func == (lhs: Rectangle, rhs: Rectangle) -> Bool {
      return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(self.width)
    hasher.combine(self.height)
    hasher.combine(self.color)
    hasher.combine(self.path)
  }
}
