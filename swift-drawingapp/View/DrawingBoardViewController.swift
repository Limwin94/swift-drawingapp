//
//  DrawingBoardViewController.swift
//  swift-drawingapp
//
//  Created by JK on 2022/07/04.
//

import UIKit

import SnapKit

final class DrawingBoardViewController: UIViewController {
  
  // MARK: Property
  private lazy var buttonContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    
    return stackView
  }()
  private let rectangleModeButton = DrawingModeButton(type: .rect)
  private let lineModeButton = DrawingModeButton(type: .line)
  
  private let viewModel: DrawingViewModel
  
  // MARK: Initializer
  init(viewModel: DrawingViewModel) {
    self.viewModel = viewModel
    
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  
  // MARK: LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.configureView()
    self.addSubviews()
  }
  
  override func updateViewConstraints() {
    self.makeConstraints()
    
    super.updateViewConstraints()
  }
  
  // MARK: Method
  private func addSubviews() {
    self.view.addSubview(self.buttonContainer)
    self.buttonContainer.addArrangedSubview(self.rectangleModeButton)
    self.buttonContainer.addArrangedSubview(self.lineModeButton)
  }
  
  private func makeConstraints() {
    self.buttonContainer.snp.makeConstraints { make in
      make.centerX.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    self.rectangleModeButton.snp.makeConstraints { make in
      make.size.equalTo(50)
    }
    
    self.lineModeButton.snp.makeConstraints { make in
      make.size.equalTo(50)
    }
  }
  
  private func configureView() {
    self.view.backgroundColor = .white
  }
}

