//
//  DrawingObject.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

protocol DrawingObject: Identifiable {
  var id: UUID { get }
  var color: RandomSystemColor { get }
}
