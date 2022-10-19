//
//  DrawingType.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/20.
//

import Foundation

enum DrawingType {
  case rect
  case line
  
  mutating func toggle() {
    switch self {
    case .rect:
      self = .line
    case .line:
      self = .rect
    }
  }
}
