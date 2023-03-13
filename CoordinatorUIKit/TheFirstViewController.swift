//
//  ViewController.swift
//  CoordinatorUIKit
//
//  Created by Mindaugas Balakauskas on 26/01/2023.
//

import UIKit

class TheFirstViewController: UIViewController, CoordinatorVCBoard {

    weak var mainCoordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToTheSecondScreen(_ sender: Any) {
        mainCoordinator?.goToTheSecondScreen(name: "Hello Coordinator")// passing the data
    }
    
}

