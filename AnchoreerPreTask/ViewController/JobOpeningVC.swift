//
//  ViewController.swift
//  AnchoreerPreTask
//
//  Created by 김지우 on 19/06/2019.
//  Copyright © 2019 김지우. All rights reserved.
//

import UIKit

class JobOpeningVC : UIViewController {
    @IBOutlet weak var jobOpeningTableView: UITableView!
    
    var companyList: [CompanyInfoVO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTableView()
    }
    
    func setUpTableView() {
        self.jobOpeningTableView.delegate = self
        self.jobOpeningTableView.dataSource = self
    }
}

extension JobOpeningVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.companyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobOpeningCell", for: indexPath) as! JobOpeningCell
        guard self.companyList.count > 0 else { return cell }
        cell.configure(data: self.companyList[indexPath.row])
        return cell
    }
}

