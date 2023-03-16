//
//  SplashPresenter.swift
//  HIS_Patient
//
//  Created by m3azy on 14/11/2022.
//
//

import Foundation
import UIKit

protocol ISplashPresenter {
    func viewDidLoad()
    func animationDone()
}

class SplashPresenter: ISplashPresenter {

    private let viewController: ISplashViewController!
    private let router: ISplashRouter!
    private let interactor: ISplashInteractor!
        
    init(withViewController vc: ISplashViewController, interactor: ISplashInteractor, router: ISplashRouter) {
        self.viewController = vc
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            guard let self else { return }
            self.viewController.startAnimation()
        }
    }
    
    func animationDone() {
        router.gotoHome()
    }
}
