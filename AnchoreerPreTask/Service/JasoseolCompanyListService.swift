//
//  JasoseolCompanyListService.swift
//  AnchoreerPreTask
//
//  Created by 김지우 on 19/06/2019.
//  Copyright © 2019 김지우. All rights reserved.
//

import Foundation

struct JasoseolCompanyListService {
    static let sharedInstance = JasoseolCompanyListService()
    
    func getCompanyList(file: URL, completion : @escaping ([CompanyInfoVO]) -> Void) {
        let decoder = JSONDecoder()
        do {
            let originData = try Data(contentsOf: file)
            let data = try decoder.decode([CompanyInfoVO].self, from: originData)
            completion(data)
        } catch {
            print(error.localizedDescription)
        }
    }
}
