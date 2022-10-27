//
//  Rectangle.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

typealias RectangleObject = DrawingObject & RectangleProtocol

protocol RectangleProtocol {
  var size: Size { get set }
  var point: Point { get set }
}

struct Rectangle: RectangleObject {
  var id: UUID {
    .init()
  }
  
  var color: RandomSystemColor {
    .init()
  }
  
  var size: Size
  var point: Point
}

extension Rectangle: Equatable {
  static func == (lhs: Rectangle, rhs: Rectangle) -> Bool {
      return lhs.id == rhs.id
  }
}
