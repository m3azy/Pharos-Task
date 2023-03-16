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
    func reloadTable()
}

class HomeViewController: UIViewController, IHomeViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: IHomePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        disableDarkMode()
        disableBackGesture()
        presenter.viewDidLoad()
    }
    
    func reloadTable() {
        tableView.reloadData()
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func initTableView() {
        tableView.registerWithAutomaticHeight(HomeTableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getArrayCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as HomeTableViewCell
        cell.selectionStyle = .none
        cell.setData(presenter.getItemAt(indexPath.row))
        return cell
    }
}
