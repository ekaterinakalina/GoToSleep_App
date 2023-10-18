//
//  DataController.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 31.08.23.
//  Update: 17.10.23
//  

import Foundation

class DataController:ObservableObject{
    //VARS
    @Published public var allCycles:[Cycle] = []

    init() {
        loadData()
    }
    
    //Functions loads data array
    func loadData() {
        
        //bind sleep cycle times
        let sleepCycleTimes = calculateSleepCycles()
        
        let cycle1: Cycle = Cycle(cycleTime: sleepCycleTimes[0], cycleName: "CYCLE 1", sleepTime: "1h 45m")
        let cycle2: Cycle = Cycle(cycleTime: sleepCycleTimes[1], cycleName: "CYCLE 2", sleepTime: "3h 15m")
        let cycle3: Cycle = Cycle(cycleTime: sleepCycleTimes[2], cycleName: "CYCLE 3", sleepTime: "4h 45m")
        let cycle4: Cycle = Cycle(cycleTime: sleepCycleTimes[3], cycleName: "CYCLE 4", sleepTime: "6h 15m")
        let cycle5: Cycle = Cycle(cycleTime: sleepCycleTimes[4], cycleName: "CYCLE 5", sleepTime: "7h 45m")
        let cycle6: Cycle = Cycle(cycleTime: sleepCycleTimes[5], cycleName: "CYCLE 6", sleepTime: "9h 15m")
        let cycle7: Cycle = Cycle(cycleTime: sleepCycleTimes[6], cycleName: "CYCLE 7", sleepTime: "10h 45m")
        //fill the array
        allCycles = [cycle1, cycle2, cycle3, cycle4, cycle5, cycle6, cycle7]

    }
    
    //Function calculates the sleep cycle times and return it as string
    func calculateSleepCycles() -> [String] {
        //get the user calendar
        let calendar = Calendar.current
        //access to the user's date components
        let now = Date()
        //empty string array 
        var sleepTimes: [String] = []
    
        //calculate 7 sleep cycles
        for cycle in 1...7 {
          
            let cycleDuration = TimeInterval(90 * 60) // 90 minutes per cycle --> seconds
            let timeToAdd = TimeInterval(cycle) * cycleDuration
            let sleepTime = calendar.date(byAdding: .second, value: Int(timeToAdd), to: now)!
            
            //access to DateFormatter
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm" // 24-hour format
            let sleepTime24HourString = dateFormatter.string(from: sleepTime)
            
            //fill the array
            sleepTimes.append(sleepTime24HourString)
        }
        return sleepTimes
    }
    
}

