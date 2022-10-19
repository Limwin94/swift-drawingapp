//
//  RandomColorRenerator.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import UIKit

protocol RandomColorRenerator {
  var color: UIColor { get }
}

extension RandomColorRenerator {
  var color: UIColor {
    UIColor(
      red: .random(in: 0...1),
      green: .random(in: 0...1),
      blue: .random(in: 0...1),
      alpha: 1.0
    )
  }
}
