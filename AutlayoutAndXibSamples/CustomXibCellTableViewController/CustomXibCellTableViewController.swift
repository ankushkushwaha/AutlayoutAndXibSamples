//
//  CustomXibCellTableViewController.swift
//  AutlayoutAndXibSamples
//
//  Created by Ankush Kushwaha on 7/5/18.
//  Copyright © 2018 Ankush Kushwaha. All rights reserved.
//

import UIKit

// tableview has its cell as xib, and those xib cells (SettingTableViewCell) has another xib view (AppInfoView)
class CustomXibCellTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "SettingTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "SettingTableViewCell")

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 50

        tableView.dataSource = self
        tableView.delegate = self

    }

}

extension CustomXibCellTableViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SettingTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? SettingTableViewCell
        return cell!
    }
}
