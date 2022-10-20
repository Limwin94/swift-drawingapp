//
//  DrawingViewModel.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/20.
//

import Foundation

typealias AddRectangleAction = ((Rectangle) -> Void)
typealias AddLineAction = ((Line) -> Void)

final class DrawingViewModel {
  
  private let usecase: DrawingUseCase
  
  var addRectangle: AddRectangleAction?
  var addLine: AddLineAction?
  
  init(usecase: DrawingUseCase) {
    self.usecase = usecase
  }
  
  func didSelectType(_ type: DrawingType) {
    switch type {
    case .rect:
      self.usecase.makeRectangle(action: addRectangle)
    case .line:
      break
    }
  }
  
}
