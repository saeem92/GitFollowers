//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by saeem  on 13/03/23.
//  Copyright © 2023 Sean Allen. All rights reserved.
//

import UIKit

extension UIViewController {
   func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
