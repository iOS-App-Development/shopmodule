//
//  BuyDetailViewController.swift
//  ShopModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//

import UIKit
import CoordinatorLibrary

public class BuyDetailViewController: UIViewController , Storyboarded {
    weak var coordinator: (ShopCoordinator )?

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.navigationItem.setHidesBackButton(true, animated: true)
        self.presentationController?.delegate = self
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func buyDetailSpecificationTapped(_ sender: Any) {
        coordinator?.buyDetailSpecificiation()
    }

}

extension BuyDetailViewController: UIAdaptivePresentationControllerDelegate {

    public func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        return false // <-prevents the modal sheet from being closed
    }

    public func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        coordinator?.dismissModule(animated: false, completion: nil) // <- called after the modal sheet was prevented from being closed and leads to your own logic
    }
}
