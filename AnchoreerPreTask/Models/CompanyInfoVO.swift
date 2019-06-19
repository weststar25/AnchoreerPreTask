//
//  CompanyInfoVO.swift
//  AnchoreerPreTask
//
//  Created by 김지우 on 19/06/2019.
//  Copyright © 2019 김지우. All rights reserved.
//

import Foundation

struct CompanyInfosVO: Codable {
    let items: [CompanyInfoVO]
    
    enum CodingKeys: CodingKey {
        case items
    }
}

struct CompanyInfoVO: Codable {
    let companyLogoURL: String
    let companyName: String
    let companyJob: String
    let companyDeadlineDate: String
    
    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case companyJob = "fields"
        case companyLogoURL = "image"
        case companyDeadlineDate = "end_time"
    }
}
