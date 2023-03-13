//
//  Extensions.swift
//  GHFollowers
//
//  Created by saeem  on 11/03/23.
//  Copyright © 2023 Sean Allen. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func SimpleAlert(withTitle title: String, message : String)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default)
        { action in
            print("You've pressed OK Button")
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    func Alert(withTitle title: String, message : String , completion : @escaping ()  -> Void )
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default)
        { action in
          completion()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default){ a in
            self.dismiss(animated: true)
        }
        
        alertController.addAction(OKAction)
        alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func Alert1(withTitle title: String, message : String , completion : @escaping ()  -> Void )
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default)
        { action in
          completion()
        }
        
        alertController.addAction(OKAction)

        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

