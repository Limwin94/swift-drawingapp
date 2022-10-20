//
//  DrawingType.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/20.
//

import Foundation

enum DrawingType: String {
  case rect = "사각형"
  case line = "드로잉"
  
  var name: String {
    self.rawValue
  }
}
