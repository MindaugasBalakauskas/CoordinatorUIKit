//
//  Coordinator.swift
//  CoordinatorUIKit
//
//  Created by Mindaugas Balakauskas on 26/01/2023.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCoordinatoir: [Coordinator] {get}
    var navigationController: UINavigationController {get set}
    
    func startCoordinator()
}
