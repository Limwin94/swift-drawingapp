//
//  Point.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

struct Point {
  let x: Double
  let y: Double
  
  init(x: Double, y: Double) {
    self.x = x
    self.y = y
  }
  
  init(cgPoint: CGPoint) {
    self.x = Double(cgPoint.x)
    self.y = Double(cgPoint.y)
  }
  
  func toCGPoint() -> CGPoint {
    .init(x: CGFloat(self.x), y: CGFloat(self.y))
  }
}

extension Point: Equatable {
  static func == (lhs: Point, rhs: Point) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
  }
}
