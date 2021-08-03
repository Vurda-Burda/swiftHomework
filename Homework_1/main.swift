//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 02.08.2021.
//

import Foundation

// ax^2 + bx + c = 0

// Необходимо указать значения
var a: Double? // # var a: Double? = 5
var b: Double?
var c: Double?

// Расчитывается на основание значение a, b, c
var x: Double?
var x1: Double?
var x2: Double?
var discriminant: Double?

if a != nil || b != nil || c != nil {
    discriminant = pow(b!, 2) - 4 * a! * c!
} else {
    print("Значения для вычислений не заданы!")
}

if discriminant != nil {
    if discriminant! == 0 {
        x = (-b!)/(2 * a!)
        print(x!)
    } else if discriminant! < 0 {
        print("Решения нет!")
    } else {
        x1 = (-b! - sqrt(discriminant!))/(2 * a!)
        x2 = (-b! + sqrt(discriminant!))/(2 * a!)
        print("x1:\(x1!)", "x2:\(x2!)")
    }
} else {
    print("Значения для вычислений не заданы!")
}

// Необходимо указать значения
var legA: Double? // # var legA: Double? = 10
var legB: Double?

//Расчёт производится автоматически
var square: Double?
var hypotenuse: Double?
var perimeter: Double?

if legA != nil || legB != nil {
    square = 0.5 * legA! * legB!
    hypotenuse = sqrt(pow(legA!, 2) + pow(legB!, 2))
    perimeter = hypotenuse! + legA! + legB!
    print("Площадь:\(square!)", "Гипотенуза:\(hypotenuse!)", "Периметр:\(perimeter!)")
} else {
    print("Данные для расчетов по треуголнику не указаны!")
}

// Необходимо указать значения
var contribution: Double?
var yearQuantity: Double?
var yearPersent: Double?

// Ввод данных через консоль
print("Введите сумму вклада")
var contributionEnter = readLine()
contribution = Double(contributionEnter!)
print("Введите проценты")
var yearQuantityEnter = readLine()
yearQuantity = Double(yearQuantityEnter!)
print("Введите срок вклада")
var yearPersentEnter = readLine()
yearPersent = Double(yearPersentEnter!)

// Результат считается на основание данных указанных выше
var result: Double?

if contribution != nil && yearQuantity != nil && yearPersent != nil {
    result = (contribution! * yearPersent! * yearQuantity!) / 100 + contribution!
    print("Сумма вклада:\(result!)")
} else {
    print("Данные по вкладу не заданы!")
}






