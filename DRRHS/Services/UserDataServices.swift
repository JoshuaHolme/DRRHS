//
//  UserDataServices.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/9/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class userDataServices {
    
    static let instance = userDataServices()
    let defaults = UserDefaults.standard
    
//Variables to be used throughout the entire application. Are Defined in UserStandard Defaults to be saved in Core Data and be present even after the app has closed
    // Green Block 1
    var GrB1Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GrB1ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GrB1RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Green Block 2
    var GrB2Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GrB2ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GrB2RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Green Block 3
    var GrB3Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GrB3ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GrB3RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Green Block 4
    var GrB4Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GrB4ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GrB4RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Gold Block 1
    var GoB1Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GoB1ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GoB1RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Gold Block 2
    var GoB2Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GoB2ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GoB2RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Gold Block 3
    var GoB3Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GoB3ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GoB3RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    
    //Gold Block 4
    var GoB4Teacher: String? {
        get {
            return defaults.string(forKey: TEACHER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: TEACHER_DEFAULT)
        }
    }
    var GoB4ClassName: String? {
        get {
            return defaults.string(forKey: CLASS_NAME_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: CLASS_NAME_DEFAULT)
        }
    }
    var GoB4RoomNumber: String? {
        get {
            return defaults.string(forKey: ROOM_NUMBER_DEFAULT) as String?
        }
        set {
            defaults.set(newValue, forKey: ROOM_NUMBER_DEFAULT)
        }
    }
    public private(set) var identifier = ""
    
    func setIdentifier(block: String) {
        self.identifier = block
    }
    
    func createBlock(teacher: String, room: String, className: String){
        
        if self.identifier == GRB1 {
            self.GrB1Teacher = teacher
            self.GrB1RoomNumber = room
            self.GrB1ClassName = className
        
        } else if self.identifier == GRB2 {
            self.GrB2Teacher = teacher
            self.GrB2RoomNumber = room
            self.GrB2ClassName = className
            
        } else if self.identifier == GRB3 {
            self.GrB3Teacher = teacher
            self.GrB3RoomNumber = room
            self.GrB3ClassName = className
            
        } else if self.identifier == GRB4 {
            self.GrB4Teacher = teacher
            self.GrB4RoomNumber = room
            self.GrB4ClassName = className
            
        } else if self.identifier == GOB1 {
            self.GoB1Teacher = teacher
            self.GoB1RoomNumber = room
            self.GoB1ClassName = className
            
        } else if self.identifier == GOB2 {
            self.GoB2Teacher = teacher
            self.GoB2RoomNumber = room
            self.GoB2ClassName = className
            
        } else if self.identifier == GOB3 {
            self.GoB3Teacher = teacher
            self.GoB3RoomNumber = room
            self.GoB3ClassName = className
            
        } else if self.identifier == GOB4 {
            self.GoB4Teacher = teacher
            self.GoB4RoomNumber = room
            self.GoB4ClassName = className
            
        }
        
    }
 
}
