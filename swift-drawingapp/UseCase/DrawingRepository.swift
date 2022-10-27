//
//  DrawingRepository.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/27.
//

import Foundation

final class DrawingRepository {
  
  private var rectangleModels: [any RectangleObject] = []
  
  func saveRectangle(model: any RectangleObject) {
    self.rectangleModels.append(model)
  }
  
  func fetchRectangle() -> [any RectangleObject] {
    self.rectangleModels
  }
}
