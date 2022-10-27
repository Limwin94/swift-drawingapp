//
//  DrawingViewModel.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/20.
//

import Foundation

typealias RectangleAction = ((any RectangleObject) -> Void)
typealias AddRectangleAction = ((Rectangle) -> Void)
typealias AddLineAction = ((Line) -> Void)

final class DrawingViewModel {
  
  private let usecase: DrawingUseCaseProtocol
  
  var addRectangle: RectangleAction?
  var addLine: AddLineAction?
  
  init(usecase: DrawingUseCaseProtocol) {
    self.usecase = usecase
  }
  
  func didSelectRectangleButton(in canvas: Size) {
    let rectangle = self.usecase.makeRectangle(canvas: canvas)
    
    self.addRectangle?(rectangle)
  }
}
