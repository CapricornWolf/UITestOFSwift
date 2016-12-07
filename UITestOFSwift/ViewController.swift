//
//  ViewController.swift
//  UITestOFSwift
//
//  Created by Jason on 16/11/28.
//  Copyright © 2016年 com.JaosnQJl. All rights reserved.
//

import UIKit
let cellid = "cellid"

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var mytableview:UITableView? = nil
    var itemArray:NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        self.itemArray = NSMutableArray.init(array: ["beijing","shanghai","tianjin","hainan","nanjing","sanya","pipi"])
        
        initview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initview() -> Void {
        self.mytableview = UITableView.init(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height), style: UITableViewStyle.plain)
        self.mytableview!.delegate = self;
        self.mytableview!.dataSource = self;
        self.mytableview?.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        self.mytableview?.tableFooterView = UIView.init()
        self.view.addSubview(self.mytableview!)
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        cell.textLabel?.text = "hh"
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 80
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

