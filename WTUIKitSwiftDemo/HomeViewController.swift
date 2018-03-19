//
//  HomeViewController.swift
//  WTUIKitSwiftDemo
//
//  Created by wintel on 2018/3/19.
//  Copyright © 2018年 wintelsui. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,
    UITableViewDelegate,
    UITableViewDataSource
{
    
    let _actionKeyImageZoom = "Image Zoom View"
    
    var _acyionList: [String]!
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _acyionList = [_actionKeyImageZoom]
        tableview.tableFooterView = UIView()
    }
    
    // MARK: - TableView Delegate Start
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _acyionList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "TableViewCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        }
        let key = _acyionList[indexPath.row]
        cell?.textLabel?.text = key
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let key = _acyionList[indexPath.row]
        actionFor(key: key)
    }
    
    // MARK: - TableView Delegate End
    
    private func actionFor(key: String?) {
        if let keyStr = key {
            if keyStr == _actionKeyImageZoom {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "WTImageZoomViewController")
                if vc != nil {
                    vc?.title = keyStr
                    self.navigationController?.pushViewController(vc!, animated: true)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

