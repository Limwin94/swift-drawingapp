//
//  swift_drawingappTests.swift
//  swift-drawingappTests
//
//  Created by JK on 2022/07/04.
//

import XCTest
@testable import swift_drawingapp

class swift_drawingappTests: XCTestCase {

    func test_toggle_drawing_type_rect_to_line() throws {
      var drawingType = DrawingType.rect
      
      drawingType.toggle()
      
      XCTAssertEqual(drawingType, .line)
    }
  
  func test_toggle_drawing_type_line_to_rect() throws {
    var drawingType = DrawingType.line
    
    drawingType.toggle()
    
    XCTAssertEqual(drawingType, .rect)
  }
}
