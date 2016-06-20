//
//  FirstViewController.swift
//  LearningSwift
//
//  Created by Frank on 16/6/16.
//  Copyright © 2016年 Frank. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    var menu = ["基础部分", "基本运算符", "字符串和字符", "集合类型", "控制流", "函数", "闭包", "枚举", "类和结构体", "属性", "方法", "下标", "继承", "构造过程", "析构过程", "自动引用计数", "可选链", "错误处理", "类型转换", "嵌套类型", "扩展", "协议", "泛型", "访问控制", "高级运算符"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "menuCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = menu[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = SubMenuViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

