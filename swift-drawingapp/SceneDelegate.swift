//
//  SceneDelegate.swift
//  swift-drawingapp
//
//  Created by JK on 2022/07/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene) else { return }

    let window = UIWindow(windowScene: windowScene)
    
    let useCase = DrawingUseCase()
    let viewModel = DrawingViewModel(usecase: useCase)
    window.rootViewController = DrawingBoardViewController(viewModel: viewModel)
    
    self.window = window
    
    window.makeKeyAndVisible()
  }

}

