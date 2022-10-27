//
//  DrawingBoardViewController.swift
//  swift-drawingapp
//
//  Created by JK on 2022/07/04.
//

import UIKit

import SnapKit

final class DrawingBoardViewController: UIViewController {
  
  // MARK: Constant
  private enum Constant {
    static let buttonWidth = 150
    static let buttonHeight = 100
  }
  
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
    self.bind()
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  
  // MARK: LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.addSubviews()
    self.configureView()
    self.configureDrawingButton()
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
      make.width.equalTo(Constant.buttonWidth)
      make.height.equalTo(Constant.buttonHeight)
    }
    
    self.lineModeButton.snp.makeConstraints { make in
      make.width.equalTo(Constant.buttonWidth)
      make.height.equalTo(Constant.buttonHeight)
    }
  }
  
  private func bind() {
    self.viewModel.addRectangle = { [weak self] rectangle in
      let rectangleView = ReactangleView(model: rectangle)
      self?.view.addSubview(rectangleView)
    }
  }
  
  private func configureView() {
    self.view.backgroundColor = .white
  }
  
  private func configureDrawingButton() {
    self.rectangleModeButton.addTarget(
      self,
      action: #selector(self.doneButtonAction),
      for: .touchUpInside
    )
    self.lineModeButton.addTarget(
      self,
      action: #selector(self.doneButtonAction),
      for: .touchUpInside
    )
  }
  
  @objc private func doneButtonAction(_ sender: DrawingModeButton) {
    let cgSize = self.view.frame.size
    let size = Size(cgSize)
    
    switch sender.type {
    case .rect:
      self.viewModel.didSelectRectangleButton(in: size)
    case .line:
      break
    }
  }
}

final class ReactangleView: UIView {
  
  init(model: Rectangle) {
    let cgPoint = model.point.toCGPoint()
    let cgSize = model.size.toCGSize()
    
    let frame = CGRect(origin: cgPoint, size: cgSize)
    super.init(frame: frame)
    
    self.backgroundColor = model.color.value
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
