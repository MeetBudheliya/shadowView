//
//  ViewController.swift
//  shadowView
//
//  Created by MAC on 25/03/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var expand: UIButton!
    var isExpand = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expand.layer.cornerRadius = 10
    }

    @IBAction func changeExpandClicked(_ sender: UIButton) {
        if isExpand{
            viewHeight.constant = 350
            isExpand = false
        }else{
            viewHeight.constant = 200
            isExpand = true
        }
    }
    
}

