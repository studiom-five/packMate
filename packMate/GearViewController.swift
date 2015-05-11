//
//  SecondViewController.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class GearViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblGearList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        tblGearList.reloadData();
    }
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gearMgr.gearItem.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = gearMgr.gearItem[indexPath.row].name
        cell.detailTextLabel?.text = gearMgr.gearItem[indexPath.row].weight
        
        //Put the picture next to each gear item.
        var gearImage = UIImage(named: "PlaceHolderImage")
        cell.imageView?.image = gearImage
        
        return cell
    }
    
}



//    var userGear = [
//        Gear(name: "knife"),
//        Gear(name: "sleeping bag"),
//        Gear(name: "canteen"),
//        Gear(name: "flint"),
//        Gear(name: "tent"),
//        Gear(name: "headlamp"),
//        Gear(name: "small dry bag"),
//        Gear(name: "medium dry bag"),
//        Gear(name: "tent stakes"),
//        Gear(name: "AAA batteries"),
//        Gear(name: "socks"),
//        Gear(name: "water filter") ]
















