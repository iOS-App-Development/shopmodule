//
//  BuyDetailSpecificationViewController.swift
//  ShopModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//

import UIKit
import CoordinatorLibrary

public class BuyDetailSpecificationViewController: UIViewController  , Storyboarded {
    weak var coordinator: (ShopCoordinator )?

    public override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.setHidesBackButton(true, animated: true)
//        print(self.presentationController)
//    https://stackoverflow.com/questions/56459329/disable-the-interactive-dismissal-of-presented-view-controller
//        self.presentationController?.delegate = self
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
        } else {
            // Fallback on earlier versions
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissTapped(_ sender: Any) {
        coordinator?.popToRootModule(animated: false)
    }

}
