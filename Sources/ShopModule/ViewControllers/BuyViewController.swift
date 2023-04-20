//
//  BuyViewController.swift
//  ShopModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//


import UIKit
import CoordinatorLibrary

public class BuyViewController: UIViewController, Storyboarded {
    var coordinator: (ShopCoordinator )?

    public override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.setHidesBackButton(true, animated: true)
//        print(self.presentationController)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyDetailTapped(_ sender: Any) {
        coordinator?.buyDetail()

    }
}
