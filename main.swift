//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation

//Перечисление
enum CarTruckParam {
    case truck, car
    case disel, petrol, electric
    case start, stop
    case open, close
    case yes, no
}

//Class Car
class Car {
    let yearProduction: Int
    var mileageKm: Double
    var engineType: CarTruckParam
    var engineIsRunningOrNot: CarTruckParam
    var areWindowsOpen: CarTruckParam
    
    static var count = 0
    
    init(yearProduction: Int, mileageKm: Double, engineType: CarTruckParam, engineIsRunningOrNot: CarTruckParam, areWindowsOpen: CarTruckParam) {
        self.yearProduction = yearProduction
        self.mileageKm = mileageKm
        self.engineType = engineType
        self.engineIsRunningOrNot = engineIsRunningOrNot
        self.areWindowsOpen = areWindowsOpen
        Car.count += 1
    }
    
    func newMileageKm(km: Double) {
        self.mileageKm += km
    }
    
    //Метод для переопределения
    func availabilityCarVideoSystem() {
        print("Не определено!")
    }
    
    func engineStartStop(startOrStop: CarTruckParam) {
        switch startOrStop {
        case .start:
            self.engineIsRunningOrNot = .start
            print("Двигатель запущен")
        case .stop:
            self.engineIsRunningOrNot = .stop
            print("Двигатель остановлен")
        default:
            print("Выбран неверный параметр")
            break
        }
    }
}

//Truck
class TruckCar: Car {
    let marka: String
    var color: String
    var carVideoSystem: CarTruckParam
    
    init(yearProduction: Int, mileageKm: Double, engineType: CarTruckParam, engineIsRunningOrNot: CarTruckParam, areWindowsOpen: CarTruckParam, marka: String, color: String, carVideoSystem: CarTruckParam) {
        self.marka = marka
        self.color = color
        self.carVideoSystem = carVideoSystem
        
        super.init(yearProduction: yearProduction, mileageKm: mileageKm, engineType: engineType, engineIsRunningOrNot: engineIsRunningOrNot, areWindowsOpen: areWindowsOpen)
    }
    
    //Переопределённый метод
    override func availabilityCarVideoSystem() {
        self.carVideoSystem = .no
    }
    
    
}

//SportCar
class SportCar: Car {
    let marka: String
    var color: String
    var carVideoSystem: CarTruckParam
    
    init(yearProduction: Int, mileageKm: Double, engineType: CarTruckParam, engineIsRunningOrNot: CarTruckParam, areWindowsOpen: CarTruckParam, marka: String, color: String, carVideoSystem: CarTruckParam) {
        self.marka = marka
        self.color = color
        self.carVideoSystem = carVideoSystem
        
        super.init(yearProduction: yearProduction, mileageKm: mileageKm, engineType: engineType, engineIsRunningOrNot: engineIsRunningOrNot, areWindowsOpen: areWindowsOpen)
    }
    
    //Переопределённый метод
    override func availabilityCarVideoSystem() {
        self.carVideoSystem = .yes
    }
}

print("Count copy: \(Car.count)")

var car1 = SportCar(yearProduction: 2021, mileageKm: 0.2, engineType: .disel, engineIsRunningOrNot: .stop, areWindowsOpen: .close, marka: "bmw", color: "black", carVideoSystem: .no)
var truck1 = TruckCar(yearProduction: 2010, mileageKm: 300.00, engineType: .petrol, engineIsRunningOrNot: .stop, areWindowsOpen: .open, marka: "Volvo", color: "red", carVideoSystem: .yes)

print("car1", "Пробег:\(car1.mileageKm)", "км", ",", "Наличие видео системы: \(car1.carVideoSystem)")
print("truck1", "Пробег:\(truck1.mileageKm)", "км", ",", "Наличие видео системы: \(truck1.carVideoSystem)")

print("Count copy: \(Car.count)")

car1.newMileageKm(km: 12.6)
car1.availabilityCarVideoSystem()

truck1.newMileageKm(km: 97.6)
truck1.availabilityCarVideoSystem()

print("car1", "Пробег:\(car1.mileageKm)", "км", ",", "Наличие видео системы: \(car1.carVideoSystem)")
print("truck1", "Пробег:\(truck1.mileageKm)", "км", ",", "Наличие видео системы: \(truck1.carVideoSystem)")



