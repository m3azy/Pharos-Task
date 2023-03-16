//
//  SplashViewController.swift
//  HIS_Patient
//
//  Created by m3azy on 14/11/2022.
//
//

import Foundation
import UIKit

protocol ISplashViewController {
    func startAnimation()
}

class SplashViewController: UIViewController, ISplashViewController {

    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet weak var constraintLogoCenterY: NSLayoutConstraint!

    var presenter: ISplashPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableDarkMode()
        presenter.viewDidLoad()
    }
    
    func startAnimation() {
        constraintLogoCenterY.constant -= GET_RATIO(200)
        UIView.animate(withDuration: 1.0, animations: { [weak self] in
            guard let self else { return }
            self.view.layoutIfNeeded()
        }, completion: { [weak self] _ in
            guard let self else { return }
            self.presenter.animationDone()
        })
    }
}

