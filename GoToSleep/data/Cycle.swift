//
//  Cycle.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 01.09.23.
//  Update: 17.10.23
//  Main data struct

import Foundation

struct Cycle:Identifiable {

    var id: UUID = UUID()
    let cycleTime: String
    let cycleName: String
    let sleepTime: String
}
