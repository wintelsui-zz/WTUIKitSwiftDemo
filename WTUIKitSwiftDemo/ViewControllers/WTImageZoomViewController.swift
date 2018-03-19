//
//  WTImageZoomViewController.swift
//  WTUIKitSwiftDemo
//
//  Created by wintel on 2018/3/19.
//  Copyright © 2018年 wintelsui. All rights reserved.
//

import UIKit

class WTImageZoomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.gray
        
        let iv = WTImageZoomViewSwift(frame: CGRect(x: 0, y: 64, width: 200, height: 300))
        self.view.addSubview(iv)
        iv.load(image: #imageLiteral(resourceName: "Aragaki_34.jpg"))//iv.load(image: #imageLiteral(resourceName: "Aragaki_34.jpg"))
        iv.imageZoomViewClosureSingleTap = {
            print("imageZoomViewClosureSingleTap")
        }
        iv.imageZoomViewClosureDoubleTap = {
            print("imageZoomViewClosureDoubleTap")
        }
        iv.imageZoomViewClosureLongTap = {
            print("imageZoomViewClosureLongTap")
        }
        
        iv.center = self.view.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
