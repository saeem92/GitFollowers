//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by saeem  on 13/03/23.
//  Copyright © 2023 Sean Allen. All rights reserved.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containterView = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configuretitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    func configureContainerView() {
        view.addSubview(containterView)
        containterView.backgroundColor = .systemBackground
        containterView.layer.cornerRadius = 16
        containterView.layer.borderWidth = 2
        containterView.layer.borderColor = UIColor.white.cgColor
        containterView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containterView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containterView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containterView.widthAnchor.constraint(equalToConstant: 280),
            containterView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    

    func configuretitleLabel() {
        containterView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containterView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containterView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containterView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        containterView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containterView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containterView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containterView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
        containterView.addSubview(messageLabel)
        messageLabel.text = message ?? "unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containterView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containterView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
