//
//  EventStruct.swift
//  U&I
//
//  Created by Daniel BEDIAKO on 21/09/2021.
//

import Foundation

struct Event: Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var firstName : String
    var lastName : String
    var avatar : String
    var date : String
    var hour : String
    var adress : String
    var city : String
}
