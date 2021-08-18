//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation

//Перечисления для методов и свойств
enum CarParamWindow {
    case open, close
}

enum CarParamEngine {
    case start, stop
}

enum CarParamMove {
    case drive, no_drive
}

enum CarType {
    case truck, car
}

//Протокол
protocol CarProtocol {
    var marka: String {get}
    var productionYear: Int {get}
    var type: CarType {get}
    var tankYesNo: String {get}
    
    func mileageCar(mileage: Double)
}

//Расширение протокола
extension CarProtocol {
    //Метод для грузовика
    func startStopEngine(action: CarParamEngine, actionEngine: TruckCar) {
        switch action {
        case .start:
            actionEngine.egnine = .start
            print("Двигатель \(actionEngine.marka) запущен")
        case .stop:
            actionEngine.egnine = .stop
            print("Двигатель \(actionEngine.marka) запущен")
        }
    }
    //Метод для авто
    func openCloseWindow(action: CarParamWindow, actionWindow: SportCar) {
        switch action {
        case .close:
            actionWindow.window = .close
            print("Окно открыто")
        case .open:
            actionWindow.window = .open
            print("Окно закрыто")
        }
    }
    //Метод для авто
    func moveDontMoveCar(action: CarParamMove, actionMove: SportCar) {
        switch action {
        case .drive:
            actionMove.move = .drive
            print("Машина \(actionMove.marka) поехала")
        case .no_drive:
            actionMove.move = .no_drive
            print("Машина \(actionMove.marka) не едет")
        }
    }
}
//Грузовик
class TruckCar: CarProtocol {
    var marka: String
    var productionYear: Int
    var mileage: Double
    var type: CarType
    var egnine: CarParamEngine
    
    
    init (marka: String, productionYear: Int, mileage: Double, engine: CarParamEngine, type: CarType) {
        self.marka = marka
        self.productionYear = productionYear
        self.mileage = mileage
        self.egnine = engine
        self.type = type
    }
    
    
    var tankYesNo: String {
        get {
                return "Цистерна есть - это грузовик"
            }
    }
    
    func mileageCar(mileage: Double) {
        self.mileage += mileage
    }
}
//Автомобиль
class SportCar: CarProtocol {
    var marka: String
    var productionYear: Int
    var mileage: Double
    var type: CarType
    var window: CarParamWindow
    var move: CarParamMove
    
    init (marka: String, productionYear: Int, mileage: Double, window: CarParamWindow, move: CarParamMove, type: CarType) {
        self.marka = marka
        self.productionYear = productionYear
        self.mileage = mileage
        self.window = window
        self.move = move
        self.type = type
    }
    
    var tankYesNo: String {
        get {
            return ("Цистерны нет - это легковая машина")
         }
   }
    
    func mileageCar(mileage: Double) {
        self.mileage += mileage
    }
   
}
//Расширенрие для грузовика
extension TruckCar: CustomStringConvertible {
    var description: String {
        return "(Марка: \(marka), Год выпуска: \(productionYear), Пробег: \(mileage), Тип машины: \(type), Двигатель: \(egnine))"
    }
}
//Расширение для автомобиля
extension SportCar: CustomStringConvertible {
    var description: String {
        return "(Марка: \(marka), Год выпуска: \(productionYear), Пробег: \(mileage), Тип магины: \(type), Окно: \(window), Движение: \(move))"
    }
}



var truck1 = TruckCar(marka: "MAN", productionYear: 2019, mileage: 0.5, engine: .stop, type: .truck)
var car1 = SportCar(marka: "SAAB", productionYear: 2010, mileage: 357.75, window: .open, move: .no_drive, type: .car)

print(truck1)
print(car1)

truck1.mileageCar(mileage: 147.47)
truck1.startStopEngine(action: .start, actionEngine: truck1)

car1.moveDontMoveCar(action: .drive, actionMove: car1)

print(truck1)
print(car1)
