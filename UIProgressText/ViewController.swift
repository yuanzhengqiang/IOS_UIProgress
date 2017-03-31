//
//  ViewController.swift
//  UIProgressText
//
//  Created by 原政强 on 17/3/31.
//  Copyright © 2017年 yzq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        progress1.progress = 0
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: changeProgress)
    }
    func changeProgress(sender:Timer) {
        progress1.progress += 0.01
        if (progress1.progress >= 1) {
            sender.invalidate()
        }
    }

    @IBOutlet weak var progress1: UIProgressView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

