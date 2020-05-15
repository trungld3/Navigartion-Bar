//
//  ViewController.swift
//  Navigartion Bar
//
//  Created by TrungLD on 5/15/20.
//  Copyright © 2020 TrungLD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer  = Timer()
    var time = 210
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    @objc func decreaseTimer(){
        if time > 0 {   time -= 1
        timelabel1.text = String ( time)
        }
        else {
            timer.invalidate()
        }
    }
    @IBAction func btnPlay(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    @IBOutlet weak var timelabel1: UILabel!
    @IBOutlet weak var timeLabel: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func minusTen(_ sender: UIBarButtonItem) {
        time -= 10
        timelabel1.text = String ( time)
    }
    
    @IBAction func resetTime(_ sender: UIBarButtonItem) {
        time = 210
        timelabel1.text = String ( time)
    }
    @IBAction func plusTen(_ sender: UIBarButtonItem) {
        time += 10
               timelabel1.text = String ( time)
    }
}

