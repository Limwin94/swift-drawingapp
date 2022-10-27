//
//  RectangleView.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/25.
//

import UIKit

final class ReactangleView: UIView, RectangleSelectable {
  var isSelected: ((any RectangleObject) -> Void)?
  
  private let model: any RectangleObject
  
  init(model: any RectangleObject) {
    self.model = model
    
    let cgPoint = self.model.point.toCGPoint()
    let cgSize = self.model.size.toCGSize()
    
    let frame = CGRect(origin: cgPoint, size: cgSize)
    super.init(frame: frame)
    
    self.backgroundColor = self.model.color.element
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    
    // select
  }
  
  func select(_ isSelect: Bool) {
    self.layer.borderColor = isSelect ? UIColor.systemRed.cgColor : UIColor.clear.cgColor
    self.layer.borderWidth = isSelect ? 2 : 0
  }
}

protocol RectangleSelectable {
  var isSelected: ((any RectangleObject) -> Void)? { get set }
  
  func select(_ isSelect: Bool)
}
