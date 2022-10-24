//
//  RandomSystemColor.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import UIKit

struct RandomSystemColor {
  private let systemColors: [UIColor] = [.systemBlue, .systemCyan, .systemGray,
                                         .systemPink, .systemBrown, .systemIndigo,
                                         .systemGreen, .systemOrange, .systemPurple,
                                         .systemYellow
                                        ]
  
  var value: UIColor {
    self.systemColors.randomElement() ?? .systemGray
  }
}
