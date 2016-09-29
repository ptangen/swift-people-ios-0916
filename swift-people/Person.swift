//
//  People.swift
//  swift-people
//
//  Created by Paul Tangen on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    let name: String            //name, an immutable String,
    var ageInYears: Int?        //ageInYears, a mutable Int optional,
    var skills: [String] = []   //skills, an empty mutable Array of Strings,
    var qualifiedTutor: Bool {  //qualifiedTutor, a calculated property of type Bool
        // Make the qualifiedTutor calculated property return true if the person knows at least four (4) skills.
        return self.skills.count >= 4
    }
    
    init(name:String, ageInYears:Int?) {
        self.name = name
        if let ageInYears = ageInYears {
            self.ageInYears = ageInYears
        }
    }
    
    convenience init(name:String) {
        self.init(name:name, ageInYears:nil)
    }
    
    convenience init() {
        self.init(name:"John Doe", ageInYears:nil) //  name property to "John Doe" and ageInYears to nil.
    }
    
    // Write a method named celebrateBirthday() that returns a String. If the ageInYears property contains nil, it should return a happy-birthday message with the person's name formatted like this for Jenny:
    //HAPPY BIRTHDAY, JENNY!!!
    //Hint: Make sure to upcase the person's name.
    
    func celebrateBirthday() -> String {
        if self.ageInYears == nil {
            return "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        } else {
            self.ageInYears = self.ageInYears! + 1
            if let ageInYears = ageInYears {
                return "HAPPY \(ageInYears)\(ageInYears.ordinal().uppercased()) BIRTHDAY, \(self.name.uppercased())!!!"
            } else {
                return ""
            }
        }
    }
    
    /*
     learnSkillBash()	"bash"
     learnSkillXcode()	"Xcode"
     learnSkillObjectiveC()	"Objective-C"
     learnSkillSwift()	"Swift"
     learnSkillInterfaceBuilder()	"Interface Builder"
     */
    
    func learnSkillBash() {
        if !self.skills.contains("bash") {
            self.skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !self.skills.contains("Xcode") {
            self.skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !self.skills.contains("Objective-C") {
            self.skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !self.skills.contains("Swift") {
            self.skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !self.skills.contains("Interface Builder") {
            self.skills.append("Interface Builder")
        }
    }
}


