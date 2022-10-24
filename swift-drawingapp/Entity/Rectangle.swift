//
//  Rectangle.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

struct Rectangle: DrawingObject {
  var id: UUID {
    .init()
  }
  
  var color: RandomSystemColor {
    .init()
  }
  
  let size: Size
  let point: Point
}

extension Rectangle: Equatable {
  static func == (lhs: Rectangle, rhs: Rectangle) -> Bool {
      return lhs.id == rhs.id
  }
}
