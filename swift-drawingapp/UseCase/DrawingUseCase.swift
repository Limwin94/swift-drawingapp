//
//  DrawingUseCase.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

protocol DrawingUseCaseProtocol {
  func makeRectangle(canvas: Size) -> any RectangleObject
}

final class DrawingUseCase: DrawingUseCaseProtocol {
  
  private let rectSize: Size
  private let repository: DrawingRepository
  
  init(rectSize: Size, repository: DrawingRepository) {
    self.rectSize = rectSize
    self.repository = repository
  }
  
  func makeRectangle(canvas: Size) -> any RectangleObject {
    let xPoint = Double.random(in: 0...canvas.width - rectSize.width)
    let yPoint = Double.random(in: 0...canvas.height - rectSize.height)
    let point = Point(x: xPoint, y: yPoint)
    
    let rectangle = Rectangle(size: self.rectSize, point: point)
    self.repository.saveRectangle(model: rectangle)
    
    return rectangle
  }

}
