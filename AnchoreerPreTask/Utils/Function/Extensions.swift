//
//  Extensions.swift
//  AnchoreerPreTask
//
//  Created by 김지우 on 19/06/2019.
//  Copyright © 2019 김지우. All rights reserved.
//

import UIKit

extension NSObject {
    static var reuseIdentifier:String {
        return String(describing:self)
    }
}

extension UIViewController {
    func simpleAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okTitle = "확인"
        let okAction = UIAlertAction(title: okTitle,style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
