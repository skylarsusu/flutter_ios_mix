//
//  MyFlutterView.swift
//  Native-Swift
//
//  Created by 苏宝敬 on 2021/1/4.
//  Copyright © 2021 苏宝敬. All rights reserved.
//

import Foundation
import Flutter

class MyFlutterView: NSObject, FlutterPlatformView {
    let label = UILabel()
    
    init(_ frame: CGRect, viewId: Int64, args: Any?, messenger: FlutterBinaryMessenger) {
        label.text = "我是ios View"
    }
    
    func view() -> UIView {
        return label
    }
    
}
