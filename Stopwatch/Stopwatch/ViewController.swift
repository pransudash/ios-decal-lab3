//
//  ViewController.swift
//  Stopwatch
//
//  Created by Pransu Dash on 2/16/17.
//  Copyright © 2017 Pransu Dash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeDisplay: UILabel!
    
    let stopwatch = Stopwatch()
    
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startPressed(_ sender: Any) {
        stopwatch.reset()
        updateView(min: 0, sec: 0, ms: 0);
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self,
                             selector: #selector(ViewController.updateTime),
                             userInfo: nil,
                             repeats: true)
    }

    @IBAction func stopPressed(_ sender: Any) {
        timer?.invalidate()
    }
    
//    @IBAction func resetPressed(_ sender: Any) {
//        stopwatch.reset()
//        updateView(min: 0, sec: 0, ms: 0);
//    }
    
    func updateTime() {
        let min: Int = stopwatch.getMin()
        let sec: Int = stopwatch.getSec()
        let ms: Int = stopwatch.getMs()
        
        updateView(min: min, sec: sec, ms: ms);
    }
    
    func updateView(min: Int, sec: Int, ms: Int) {
        let timeString = String(format: "%02d:%02d:%02d", min, sec, ms)
        timeDisplay.text = timeString;
    }
}

