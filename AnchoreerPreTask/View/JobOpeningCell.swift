//
//  JobOpeningCell.swift
//  AnchoreerPreTask
//
//  Created by 김지우 on 19/06/2019.
//  Copyright © 2019 김지우. All rights reserved.
//

import UIKit
import Kingfisher

class JobOpeningCell: UITableViewCell {
    @IBOutlet weak var companyLogoImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyJobLabel: UILabel!
    @IBOutlet weak var deadlineDateLabel: UILabel!
    
    func configure(data : CompanyInfoVO) {
        self.companyLogoImageView.kf.setImage(with: URL(string: data.companyLogoURL))
        self.companyNameLabel.text = data.companyName
        self.companyJobLabel.text = data.companyJob
        self.deadlineDateLabel.text = data.companyDeadlineDate
    }
}
