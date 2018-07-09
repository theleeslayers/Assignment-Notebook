//
//  Assignments.swift
//  Assignment Notebook
//
//  Created by Aslan Lee on 7/9/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit

class Assignments: Codable {
    var className : String
    var homeworkName : String
    var date : String
    
init(className: String, homeworkName: String, date: String) {
    self.className = className
    self.homeworkName = homeworkName
    self.date = date
    
    }
}
