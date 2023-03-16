//
//  HomeViewController.swift
//  HIS_Patient
//
//  Created by m3azy on 15/11/2022.
//
//

import Foundation
import UIKit

protocol IHomeViewController {
    
}

class HomeViewController: UIViewController, IHomeViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: IHomePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
