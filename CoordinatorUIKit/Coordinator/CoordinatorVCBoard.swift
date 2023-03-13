//
//  CoordinatorVCBoard.swift
//  CoordinatorUIKit
//
//  Created by Mindaugas Balakauskas on 26/01/2023.
//

import Foundation
import UIKit

protocol CoordinatorVCBoard: UIViewController {
    
    static func instantiateFromStoryBoard() -> Self
    
}
extension CoordinatorVCBoard {
    
    static func instantiateFromStoryBoard() -> Self {
        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
