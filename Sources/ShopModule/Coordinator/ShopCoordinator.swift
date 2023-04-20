//
//  ShopCoordinator.swift
//  ShopModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//
import RouterLibrary

public protocol ShopCoordinator: Router {
    func buySubscription()
    func buyDetail()
    func buyDetailSpecificiation()
}
