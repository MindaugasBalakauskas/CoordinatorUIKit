//
//  MainCoordinator.swift
//  CoordinatorUIKit
//
//  Created by Mindaugas Balakauskas on 26/01/2023.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinatoir: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    func startCoordinator() {
        
        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
        let theFirstViewController: TheFirstViewController = storyboard.instantiateViewController(withIdentifier: "TheFirstViewController") as! TheFirstViewController
        theFirstViewController.mainCoordinator = self
        self.navigationController.pushViewController(theFirstViewController, animated: true)
        
    }
    func goToTheFirstScreen() {
//        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
//        let theFirstViewController: TheFirstViewController = storyboard.instantiateViewController(withIdentifier: "TheFirstViewController") as! TheFirstViewController
        let theFirstViewController = TheFirstViewController.instantiateFromStoryBoard()
        theFirstViewController.mainCoordinator = self
        navigationController.pushViewController(theFirstViewController, animated: true)
    }
    
    func goToTheSecondScreen(name: String) { // <--we can pass the data in the parameters
//        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
//        let theSecondViewController: TheSecondViewController = storyboard.instantiateViewController(withIdentifier: "TheSecondViewController") as! TheSecondViewController
        let theSecondViewController = TheSecondViewController.instantiateFromStoryBoard()
        theSecondViewController.mainCoordinator = self
        print(name)
        navigationController.pushViewController(theSecondViewController, animated: true)
    }
    
    func goToTheThirdScreen() {
//        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
//        let theThirdViewController: TheThirdViewController = storyboard.instantiateViewController(withIdentifier: "TheThirdViewController") as! TheThirdViewController
        let theThirdViewController = TheThirdViewController.instantiateFromStoryBoard()
        theThirdViewController.mainCoordinator = self
        navigationController.pushViewController(theThirdViewController, animated: true) //push
        //navigationController.present(theThirdViewController, animated: true) //present
    }
    
    
}
