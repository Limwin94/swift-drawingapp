//
//  Size.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/24.
//

import Foundation

struct Size {
  let width: Double
  let height: Double
  
  init(width: Double, height: Double) {
    self.width = width
    self.height = height
  }
  
  init(_ cgSize: CGSize) {
    self.width = Double(cgSize.width)
    self.height = Double(cgSize.height)
  }
  
  func toCGSize() -> CGSize {
    .init(width: CGFloat(self.width), height: CGFloat(self.height))
  }
}
