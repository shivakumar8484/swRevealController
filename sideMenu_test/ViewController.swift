//
//  ViewController.swift
//  sideMenu_test
//
// 
//  Copyright © 2019 dhenusya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var barItem: UIBarButtonItem!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        barItem.target = self.revealViewController()
        barItem.action = #selector(SWRevealViewController.revealToggle(_:))
       // self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        self.revealViewController()?.rearViewRevealWidth = 240
    }
    @IBAction func menuAction(_ sender: Any) {
//        barItem.target = self.revealViewController()
//        barItem.action = #selector(SWRevealViewController.revealToggle(_:))
//        // self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
//        self.revealViewController()?.rearViewRevealWidth = 240
    }
}

