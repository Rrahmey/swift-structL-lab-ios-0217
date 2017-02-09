//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate {
    
    
    //properties
    var latitude: Double
    var longitude: Double
    
    //computed properties
    var isInNorthernHemisphere: Bool {
        guard latitude > 0 else {return false}
        return true
    }
    
    var isInSouthernHemisphere: Bool {
        guard latitude < 0 else {return false}
        return true
    }
    
    var isInWesternHemisphere: Bool {
        guard longitude > 0 else {return false}
        return true
    }
    
    var isInEasternHemisphere: Bool {
        guard longitude < 0 else {return false}
        return true
    }
    
    
    init(latitude:Double, longitude:Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    

    
    
    
    func distance(to coordinate:Coordinate) -> Double {
        let distance:Double = acos(sin(latitude.self.radians) * sin(coordinate.latitude.radians) + cos(latitude.self.radians) * cos(coordinate.latitude.radians) * cos(longitude.self.radians - coordinate.longitude.radians)) * (6371000/1000)
        return distance
    }
 
}





// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
