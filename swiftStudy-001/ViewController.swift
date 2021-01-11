//
//  ViewController.swift
//  swiftStudy-001
//
//  Created by Shukou Nakazawa on 2021/01/11.
//

import Cocoa

class ViewController: NSViewController {
    private var startTime: Double = 0.00
    private var timer: Timer = Timer()
//    private let date: Date = Date()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var label: NSTextField!
    
    @IBAction func clickStart(_ sender: Any) {
        let date = Date()
        startTime = Double(date.timeIntervalSince1970)
//        label.stringValue = String(startTime)
        timer = Timer.scheduledTimer(timeInterval: 0.097, target: self, selector: #selector(ViewController.timerRunner), userInfo: nil, repeats: true)
    }
    
    @objc func timerRunner(){
        let date = Date()
        label.stringValue = String(format: "%07.3f", (Double(date.timeIntervalSince1970) - startTime) * 3.0)
    }
    
    @IBAction func clickStop(_ sender: Any) {
        timer.invalidate()
        label.stringValue = "終了"
    }
    
}

