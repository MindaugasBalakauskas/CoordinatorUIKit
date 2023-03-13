//
//  TheSecondViewController.swift
//  CoordinatorUIKit
//
//  Created by Mindaugas Balakauskas on 26/01/2023.
//

import UIKit

class TheSecondViewController: UIViewController, CoordinatorVCBoard {

    weak var mainCoordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToTheThirdScreen(_ sender: Any) {
        mainCoordinator?.goToTheThirdScreen()
    }
    
}
