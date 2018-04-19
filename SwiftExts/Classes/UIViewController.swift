//
//  UIViewController.swift
//  SwiftyExtension
//
//  Created by Zhihui Tang on 2018-04-19.
//  Copyright © 2018 Zhihui Tang. All rights reserved.
//

import Foundation

public extension UIViewController {
    func showAlert(withTitle title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    var contentViewController: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
