//
//  ViewController.swift
//  TimesTables2
//
//  Created by Zeynep Aykal on 22/03/16.
//  Copyright © 2016 Zeynep Aykal. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate {
 
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var siderValue: UISlider!

    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
   func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   {
    return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
    let timesTable = Int(siderValue.value)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        return cell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


