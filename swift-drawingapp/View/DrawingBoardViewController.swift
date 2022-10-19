//
//  DrawingBoardViewController.swift
//  swift-drawingapp
//
//  Created by JK on 2022/07/04.
//

import UIKit

final class DrawingBoardViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.configureView()
  }
  
  
  private func configureView() {
    self.view.backgroundColor = .white
  }
}

