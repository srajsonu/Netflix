//
//  HomeTableViewController.swift
//  Netflix
//
//  Created by ARY@N on 13/04/19.
//  Copyright © 2019 ARYAN. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let tableViewCellIdentifier = "HomeTableCell"
    
    let tableViewHeaderNibName = "HomeTableViewHeaderView"
    let tableViewHeaderIdentifier = "HomeTableViewHeader"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerNib = UINib(nibName: tableViewHeaderNibName, bundle: nil)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: tableViewHeaderIdentifier)
    }
    //MARK - TableView DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell", for: indexPath) //as! HomeTableViewCell
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    //MARK - TAbleVIew Delegates
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: tableViewHeaderIdentifier) as! HomeTableViewHeaderView
        headerView.categoryLabel.text = "Trending Now"
        return headerView
    }
}
