//
//  ViewController.swift
//  CustomTableCell
//
//  Created by Rajan Maheshwari on 28/07/16.
//  Copyright © 2016 Rajan Maheshwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var array = [String]()
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        array = ["Wealth","Health","Esteem","Relationship"]

    
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as! CustomTableViewCell
        
        cell.cellLabel.text = array[indexPath.row]
        cell.labelBackgroundView.tag = indexPath.row
        cell.labelBackgroundView.userInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cellViewTapped))
        
        cell.labelBackgroundView.addGestureRecognizer(tapGesture)
        
        return cell
    }

    
    func cellViewTapped(sender:UITapGestureRecognizer) {
    
        let view = sender.view
        let index = view?.tag
        print(index!)
    }
}

