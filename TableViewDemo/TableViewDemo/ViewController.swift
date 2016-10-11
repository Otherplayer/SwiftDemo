//
//  ViewController.swift
//  TableViewDemo
//
//  Created by __无邪_ on 2016/10/10.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit
import Foundation


let kTableTitleViewHeight:CGFloat = 60

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var editBtn: UIBarButtonItem!
    let identifier = "identifier"
    let identifierCustom = "identifierCustom"
    var tableView : UITableView!
    var datas : NSMutableArray!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.datas = NSMutableArray.init(array: ["a","b","c","d","e","f"])
        
        let size = UIScreen.main.bounds.size
        
        self.tableView = UITableView.init(frame: CGRect(x:0,y:0,width:size.width,height:size.height), style: UITableViewStyle.plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.identifier)
        
        self.tableView.reloadData()
        
        
        
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: size.width, height: 100))
        headerView.backgroundColor = UIColor.darkGray
        
        self.tableView.tableHeaderView = headerView
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func editAction(_ sender: UIBarButtonItem) {
        
        self.tableView.isEditing = !self.tableView.isEditing
        
        if self.tableView.isEditing {
            self.editBtn.title = "Done"
        }else{
            self.editBtn.title = "Edit"
        }
        
    }
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.datas.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let title = self.datas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath)
        
        cell.textLabel?.text = title as? String
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return kTableTitleViewHeight
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: kTableTitleViewHeight))
        header.backgroundColor = UIColor.lightGray
        return header
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("did selected at index : \(indexPath.row) ,result : \(self.datas[indexPath.row])")
    }
    
    
    public func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        self.datas.removeObject(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
    }
    
    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
        self.datas.exchangeObject(at: sourceIndexPath.row, withObjectAt: destinationIndexPath.row)
    }
    
}

