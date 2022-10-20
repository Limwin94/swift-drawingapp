//
//  DrawingModeButton.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/20.
//

import UIKit

final class DrawingModeButton: UIButton {
  
  let type: DrawingType
  
  // MARK: Initializer
  init(type: DrawingType) {
    self.type = type
    super.init(frame: .zero)
    
    self.setTitle(type.name, for: .normal)
    self.setTitleColor(.black, for: .normal)
    self.titleLabel?.textAlignment = .center
    self.layer.borderColor = UIColor.black.cgColor
    self.layer.borderWidth = 1
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
