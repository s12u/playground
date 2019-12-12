//
//  MainCoordinator.swift
//  playground
//
//  Created by su on 2019/12/12.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit
import XCoordinator

enum MainRoute: Route {
    case main
    case list
}

class MainCoordinator: NavigationCoordinator<MainRoute> {
    init() {
        super.init(initialRoute: .main)
    }
    
    override func prepareTransition(for route: MainRoute) -> NavigationTransition {
        switch route {
            case .main:
                let viewController = MainViewController(router: unownedRouter)
                return .push(viewController)
            case .list:
                let viewController = ListViewController(router: unownedRouter)
                return .push(viewController)
        }
    }
}
