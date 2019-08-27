//
//  sideViewController.swift
//  sideMenu_test
//
//  
//  Copyright © 2019 dhenusya. All rights reserved.
//

import UIKit

class sideViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var menuTableview: UITableView!
    
    var menuOptions = ["Home","Profile","Settings","Logout"]
    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableview.delegate = self
        menuTableview.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
     
        
        let cell : MenuViewCell  = menuTableview.dequeueReusableCell(withIdentifier: "cell") as! MenuViewCell
        
        cell.optionLabel.text = menuOptions[indexPath.row]
        
        return cell
        
    }

}
