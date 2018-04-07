//
// Functions.swift
//  DRRHS
//
//  Created by Sam DuBois on 3/6/18.
//  Copyright © 2018 Holme Computer. All rights reserved.
//

import Foundation
import UIKit

class Functions {
    
    static let instance = Functions()

    public private(set) var dueDate: String = ""
    private(set) var currentDate = Date()
    private(set) var calendar = Calendar.current

    public private(set) var dueDateMonth:Int!
    public private(set) var dueDateDay: Int!
    public private(set) var dueDateYear: Int!
    public private(set) var dueDateHour: Int!
    public private(set) var dueDateMinute: Int!
    public private(set) var currentMonth: Int!
    public private(set) var currentDay: Int!
    public private(set) var currentYear: Int!
    public private(set) var currentHour: Int!
    public private(set) var currentMinute: Int!
    
    public private(set) var arcLength: Double = 0
    
    func setTime(DueDate: String) {
    
        dueDate = DueDate
        var dueDateArray : [String] = dueDate.components(separatedBy: " ")
    
        let date = dueDateArray[0]
        let time = dueDateArray[1]
    
        var dateArray = date.components(separatedBy: "/")
        var timeArray = time.components(separatedBy: ":")
    
        dueDateMonth = Int(dateArray[0])!
        dueDateDay = Int(dateArray[1])!
        dueDateYear = Int((dateArray[2]).replacingOccurrences(of: ",", with: ""))!
        
        currentMonth = calendar.component(.month, from: currentDate)
        currentDay = calendar.component(.day, from: currentDate)
        currentYear = calendar.component(.year, from: currentDate) - 2000
        currentHour = calendar.component(.hour, from: currentDate)
        currentMinute = calendar.component(.minute, from: currentDate)
        
        if dueDateArray[2].contains("AM")
        {
            if timeArray[0].contains("12")
            {
                dueDateMinute = Int(timeArray[1].replacingOccurrences(of: "AM", with: ""))!
                dueDateHour = Int(timeArray[0])! - 12
            }
            else
            {
                dueDateMinute = Int(timeArray[1].replacingOccurrences(of: "AM", with: ""))!
                dueDateHour = Int(timeArray[0])!
            }
        }
        else
        {
            if timeArray[0].contains("12")
            {
                dueDateMinute = Int(timeArray[1].replacingOccurrences(of: "PM", with: ""))!
                dueDateHour = Int(timeArray[0])!
            }
            else
            {
                dueDateMinute = Int(timeArray[1].replacingOccurrences(of: "PM", with: ""))!
                dueDateHour = Int(timeArray[0])! + 12
            }
        }
    }
    
    func calculateArcLength() -> Double
    {
        
        // Calculate the arc length
    
        if dueDateMonth < currentMonth
        {
            let totalMonth = Double(dueDateMonth - (currentMonth - 12)) / 12.0
            arcLength = Double(totalMonth) + 0.75
            if arcLength > 1 {
                arcLength = 1
                return arcLength
            } else {
                return arcLength
            }
        } else if dueDateMonth > currentMonth {
            let totalMonth: Double = Double(dueDateMonth - currentMonth) / 12.0
            arcLength = (Double(totalMonth)) + 0.75
            if arcLength > 1 {
                arcLength = 1
                return arcLength
            } else {
                return arcLength
            }
        } else if dueDateMonth - currentMonth == 0 {
            if dueDateDay < currentDay {
                let totalDay = Double(dueDateDay - (currentDay)) / 31.0
                arcLength = Double(totalDay)
                if arcLength > 0.75 {
                    arcLength = 0.75
                    return arcLength
                } else {
                    return arcLength
                }
            } else if dueDateDay > currentDay {
                let totalDay = Double(dueDateDay - currentDay) / 31.0
                arcLength = Double(totalDay) + 0.50
                if arcLength > 0.75 {
                    arcLength = 0.75
                    return arcLength
                } else {
                    return arcLength
                }
            } else if dueDateDay - currentDay <= 1 {
                let totalHour = Double(dueDateHour - currentHour) / 24
                arcLength = totalHour
                if arcLength > 0.25 {
                    arcLength = 0.25
                    return arcLength
                } else {
                    return arcLength
                }
            }
        }
        return arcLength
    }
    
    func setColor() -> UIColor {
        if arcLength > 0.55 {
            return UIColor.DRGreen
        } else if arcLength > 0.25 && arcLength <= 0.55 {
            return UIColor.DRGold
        } else if arcLength > 0 && arcLength <= 0.25 {
            return UIColor.red
        } else {
            return UIColor.init(red: 237, green: 237, blue: 237, alpha: 0)
        }
    }

    }
