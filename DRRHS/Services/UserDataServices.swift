//
//  UserDataServices.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/9/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class userDataServices
{
    
    static let instance = userDataServices()
    let defaults = UserDefaults.standard
    
    //Variables to be used throughout the entire application. Are Defined in UserStandard Defaults to be saved in Core Data and be present even after the app has closed
    
    // Green Block 1
    var GrB1Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GRB1_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB1_TEACHER)
        }
    }
    
    var GrB1ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GRB1_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB1_CLASS)
        }
    }
    
    var GrB1RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GRB1_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB1_ROOM)
        }
    }
    
    //Green Block 2
    var GrB2Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GRB2_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB2_TEACHER)
        }
    }
    
    var GrB2ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GRB2_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB2_CLASS)
        }
    }
    
    var GrB2RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GRB2_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB2_ROOM)
        }
    }
    
    //Green Block 3
    var GrB3Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GRB3_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB3_TEACHER)
        }
    }
    
    var GrB3ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GRB3_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB3_CLASS)
        }
    }
    
    var GrB3RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GRB3_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB3_ROOM)
        }
    }
    
    //Green Block 4
    var GrB4Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GRB4_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB4_TEACHER)
        }
    }
    
    var GrB4ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GRB4_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB4_CLASS)
        }
    }
    
    var GrB4RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GRB4_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GRB4_ROOM)
        }
    }
    
    //Gold Block 1
    var GoB1Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GOB1_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB1_TEACHER)
        }
    }
    
    var GoB1ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GOB1_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB1_CLASS)
        }
    }
    
    var GoB1RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GOB1_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB1_ROOM)
        }
    }
    
    //Gold Block 2
    var GoB2Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GOB2_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB2_TEACHER)
        }
    }
    
    var GoB2ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GOB2_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB2_CLASS)
        }
    }
    
    var GoB2RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GOB2_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB2_ROOM)
        }
    }
    
    //Gold Block 3
    var GoB3Teacher: String? {
        get {
            return defaults.string(forKey: GOB3_TEACHER) as String?
        }
        set {
            defaults.set(newValue, forKey: GOB3_TEACHER)
        }
    }
    
    var GoB3ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GOB3_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB3_CLASS)
        }
    }
    
    var GoB3RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GOB3_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB3_ROOM)
        }
    }
    
    //Gold Block 4
    var GoB4Teacher: String?
    {
        get
        {
            return defaults.string(forKey: GOB4_TEACHER) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB4_TEACHER)
        }
    }
    
    var GoB4ClassName: String?
    {
        get
        {
            return defaults.string(forKey: GOB4_CLASS) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB4_CLASS)
        }
    }
    
    var GoB4RoomNumber: String?
    {
        get
        {
            return defaults.string(forKey: GOB4_ROOM) as String?
        }
        set
        {
            defaults.set(newValue, forKey: GOB4_ROOM)
        }
    }
    
    public private(set) var identifier = ""
    
    func setIdentifier(block: String)
    {
        self.identifier = block
    }
    
    func createBlock(teacher: String, room: String, className: String)
    {
        
        switch identifier
        {
            
        case GRB1:
            self.GrB1Teacher = teacher
            self.GrB1RoomNumber = room
            self.GrB1ClassName = className
            
        case GRB2:
            self.GrB2Teacher = teacher
            self.GrB2RoomNumber = room
            self.GrB2ClassName = className
            
        case GRB3:
            self.GrB3Teacher = teacher
            self.GrB3RoomNumber = room
            self.GrB3ClassName = className
            
        case GRB4:
            self.GrB4Teacher = teacher
            self.GrB4RoomNumber = room
            self.GrB4ClassName = className
            
        case GOB1:
            self.GoB1Teacher = teacher
            self.GoB1RoomNumber = room
            self.GoB1ClassName = className
            
        case GOB2:
            self.GoB2Teacher = teacher
            self.GoB2RoomNumber = room
            self.GoB2ClassName = className
            
        case GOB3:
            self.GoB3Teacher = teacher
            self.GoB3RoomNumber = room
            self.GoB3ClassName = className
            
        case GOB4:
            self.GoB4Teacher = teacher
            self.GoB4RoomNumber = room
            self.GoB4ClassName = className
            
        default:
            self.GoB4Teacher = ""
            self.GoB4RoomNumber = ""
            self.GoB4ClassName = ""
        }
    }
}
