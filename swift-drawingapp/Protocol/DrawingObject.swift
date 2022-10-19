//
//  DrawingObject.swift
//  swift-drawingapp
//
//  Created by MK-AM16-010 on 2022/10/19.
//

import Foundation

protocol DrawingObject {
  var id: Int { get }
  var path: [Point] { get set }
}
