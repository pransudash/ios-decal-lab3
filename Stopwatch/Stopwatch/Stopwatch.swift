//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Pransu Dash on 2/16/17.
//  Copyright © 2017 Pransu Dash. All rights reserved.
//

import Foundation

class Stopwatch {
    
    private var ms: Int
    
    private var sec: Int
    
    private var min: Int
    
    private var startTime: Date
    
    init() {
        self.min = 0
        self.sec = 0
        self.ms = 0
        self.startTime = Date()
    }
    
    func getMin() -> Int {
        if(self.sec >= 59) {
            self.min += 1
            self.sec = 0;
        }
        
        var m: TimeInterval = self.startTime.timeIntervalSince(self.startTime)
        
        return self.min
    }
    
    func getSec() -> Int {
        if(self.ms >= 99) {
            self.sec += 1
            self.ms = 0;
        }
        return self.sec
    }
    
    func getMs() -> Int {
        self.ms += 1
        return self.ms
    }
    
    func reset() {
        self.min = 0
        self.sec = 0
        self.ms = 0
    }
    
}

