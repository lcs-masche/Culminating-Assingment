//
//  TImeTester.swift
//  Culminating Assingment
//
//  Created by Mo Asche on 2021-03-17.
//

import Foundation


//defines the way of input/output (y/m/d  /  d/m/y  / ....)

//for real app get the user input for this
let string = "01/02/2021"


let dateFormatter = DateFormatter()

dateFormatter.dateFormat = "dd/MM/yy"

dateFormatter.date(from: string)


//picks the current date

let formatter = DateFormatter()
formatter.timeStyle = .short
formatter.dateStyle = .short

let currentDate = Date()
formatter.string(from: currentDate) // 21/7/2019, 9:41 AM


//defines how much information is displayed
formatter.dateStyle = .full
formatter.string(from: currentDate)
