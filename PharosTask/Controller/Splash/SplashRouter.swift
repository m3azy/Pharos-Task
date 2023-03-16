//
//  SplashRouter.swift
//  HIS_Patient
//
//  Created by m3azy on 14/11/2022.
//
//

import Foundation
import UIKit

protocol ISplashRouter {
    func gotoHome()
}

class SplashRouter: ISplashRouter {

    private var viewController: SplashViewController?
    
    func open() -> SplashViewController {
        let interactor = SplashInteractor()
        viewController = SplashViewController()
        let presenter = SplashPresenter(withViewController: viewController!, interactor: interactor, router: self)
        viewController!.presenter = presenter        
        return viewController!
    }
    
    func gotoHome() {
        viewController?.navigationController?.pushViewController(HomeRouter().open(), animated: true)
    }
}
