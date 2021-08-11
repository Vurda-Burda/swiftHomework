//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation


struct SportCar {
    var marka: String
    var yearProduction: Int
    var trunkVolume: VolumeUnitVolume
    var engineIsRunningOrNot: CarTruckParam
    var areWindowsOpen: CarTruckParam
    var filledVolumeOfTrunk: CarTruckParam
    
    mutating func workNotWorkEngine (engine: CarTruckParam) {
        switch engine {
        case .no:
            self.engineIsRunningOrNot = .yes
        case .yes:
            self.engineIsRunningOrNot = .no
        default:
            break
        }
    }
    
    mutating func loadingTrunkBody (load: Int) {
        self.filledVolumeOfTrunk = CarTruckParam.fullnessTrunkBody(fullness: load, unitFullness: "%")
    }
}
struct TruckCar {
    var marka: String
    var yearProduction: Int
    var bodyVolume: VolumeUnitVolume
    var engineIsRunningOrNot: CarTruckParam
    var areWindowsOpen: CarTruckParam
    var filledVolumeOfBody: CarTruckParam
    
    mutating func workNotWorkEngine (engine: CarTruckParam) {
        switch engine {
        case .no:
            self.engineIsRunningOrNot = .yes
        case .yes:
            self.engineIsRunningOrNot = .no
        default:
            break
        }
    }
    
    mutating func loadingTrunkBody (load: Int) {
        self.filledVolumeOfBody = CarTruckParam.fullnessTrunkBody(fullness: load, unitFullness: "%")
    }
}

struct VolumeUnitVolume {
    var volume: Int
    var unitVolume: String
}

enum CarTruckParam {
    case yes, no
    case open, close
    case fullnessTrunkBody(fullness: Int, unitFullness: String)
}

var car = SportCar( marka: "bmw", yearProduction: 2021, trunkVolume: VolumeUnitVolume(volume: 300, unitVolume: "liter"), engineIsRunningOrNot: .no, areWindowsOpen: .close, filledVolumeOfTrunk: .fullnessTrunkBody(fullness: 100, unitFullness: " % "))
var truck = TruckCar(marka: "Volvo", yearProduction: 2020, bodyVolume: VolumeUnitVolume(volume: 3000, unitVolume: "liter"), engineIsRunningOrNot: .yes, areWindowsOpen: .open, filledVolumeOfBody: .fullnessTrunkBody(fullness: 70, unitFullness: " % "))
print(car, truck)

car.loadingTrunkBody(load: 20)
car.workNotWorkEngine(engine: .no)

truck.loadingTrunkBody(load: 80)
car.workNotWorkEngine(engine: .yes)

print(car)
print(truck)




