//
//  ViewController.swift
//  Native-Swift
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(frame: CGRect.init(x: 100, y: 100, width: 200, height: 50))
        button.setTitle("打开flutter页面", for: .normal)
        button.addTarget(self,action: #selector(openFlutterView), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    
    @objc func openFlutterView(){
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        let flutterViewController = FlutterViewController(engine: flutterEngine!, nibName: nil, bundle: nil);
        self.present(flutterViewController, animated: true, completion: nil)
    }
}
