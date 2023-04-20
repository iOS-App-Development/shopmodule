//
//  ShopCoordinatorImpl.swift
//  ShopModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//
import Foundation
import UIKit
import CoordinatorLibrary

public class ShopCoordinatorImpl:BaseCoordinator,ShopCoordinator{
    
    private weak var flowListener: CoordinatorFlowListener?
    
    
    //         dependenciesManager: CoordinatorDependencies = DefaultCoordinatorDependencies(),  //if you want nested level of coordinated use it
    public init(navigationController: UINavigationController,
         flowListener: CoordinatorFlowListener?) {
        //        super.init()
        super.init(navigationController: navigationController)
        self.flowListener = flowListener
        self.navigationController = navigationController
        self.dependencies = nil
        
    }
    deinit {
        print("deinit for ShopCoordinatorImpl")
    }
    
    open override func start() {
        let bundle = Bundle.module
        let vc = BuyViewController.instantiate(storyboardBundle:bundle,storyboardName: "ShopModule")
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    open func buySubscription() {
        let bundle = Bundle.module
        let vc = BuyViewController.instantiate(storyboardBundle:bundle,storyboardName: "ShopModule")
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    open func buyDetail() {
        let bundle = Bundle.module
        let vc = BuyDetailViewController.instantiate(storyboardBundle:bundle,storyboardName: "ShopModule")
        vc.coordinator = self
        //        self.navigationController?.pushViewController(vc, animated: true)
        topViewController?.present(vc, animated: true, completion: {
            
        })
    }
    
    open func buyDetailSpecificiation() {
        let bundle = Bundle.module
        let vc = BuyDetailSpecificationViewController.instantiate(storyboardBundle:bundle,storyboardName: "ShopModule")
        vc.coordinator = self
        topViewController?.present(vc, animated: true, completion: {
            
        })
    }
    
    //    func didFinishBuying() {
    //        self.popModule(animated: false)
    ////        flowListener?.onFlowFinished(coordinator: self)
    //    }
}
