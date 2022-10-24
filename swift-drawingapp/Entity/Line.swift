//
//  Line.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import UIKit

struct Line: DrawingObject {
  var id: UUID {
    .init()
  }
  
  var color: RandomSystemColor {
    .init()
  }
  
  var paths: [Point]
}

extension Line: Equatable {
  static func == (lhs: Line, rhs: Line) -> Bool {
    return lhs.id == rhs.id
  }
}
