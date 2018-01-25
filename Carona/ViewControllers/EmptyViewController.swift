//
//  EmptyViewController.swift
//  Carona
//
//  Created by Julio Fernandes on 25/01/18.
//  Copyright © 2018 Carona. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class EmptyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = CGRect(x: view.center.x - 20, y: view.center.y - 20, width: 40, height: 40)
        let spinner = NVActivityIndicatorView(frame: rect, type: .circleStrokeSpin, color: UIColor.lightGray, padding: nil)
        spinner.startAnimating()
        view.addSubview(spinner)
        
    }

}
