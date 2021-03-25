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

    @IBOutlet weak var vieww: viewShadow!
    var isExpand = false
    override func viewDidLoad() {
        super.viewDidLoad()
        vieww.layer.masksToBounds = false
        vieww.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            vieww.layer.shadowOffset = CGSize(width: 2, height: 2)
        vieww.layer.shadowOpacity = 0.5
        vieww.layer.shadowRadius = 7
        
        vieww.layer.cornerRadius = 10
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

