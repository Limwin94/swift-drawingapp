//
//  DrawingUseCase.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

protocol DrawingUseCaseProtocol {
  func makeRectangle(canvas: Size) -> Rectangle
}

final class DrawingUseCase: DrawingUseCaseProtocol {
  
  private let rectSize: Size
  
  init(rectSize: Size) {
    self.rectSize = rectSize
  }
  
  func makeRectangle(canvas: Size) -> Rectangle {
    let xPoint = Double.random(in: 0...canvas.width - rectSize.width)
    let yPoint = Double.random(in: 0...canvas.height - rectSize.height)
    
    let point = Point(x: xPoint, y: yPoint)
    let rectangle = Rectangle(size: self.rectSize, point: point)
    
    return rectangle
  }

}
