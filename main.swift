//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation

// Функция по первому заданию, определяет чётное\ нечётное число
func defineEvenNotEven( numberValue: Int ) {
    if (numberValue % 2 == 0) {
        print(numberValue, "- чётное число")
    } else {
        print(numberValue, "- нечётное чило")
    }
}

// Функция по второму заданию, определят делится ли число на 3 без остатка
func divisionWithoutRemainder(numberValue: Int) {
    switch(numberValue) {
    case _ where numberValue % 3 == 0:
        print(numberValue, "- делится на 3 без остатка")
        break
    default:
        print(numberValue, "- не дилится на 3 без остатка")
    }
}
// Задание №3 массив в возростающей прогрессией
var oneHundredNumbersArray: [Int] = []
var el: Int = 0
for _ in (1...100) {
    el += 1
    oneHundredNumbersArray.append(el)
    //  print(oneHundredNumbersArry) // Закомментировал, чтобы не засорять console
}

for i in (1...100) {
    let index = oneHundredNumbersArray.firstIndex(of: i)!
    if ( oneHundredNumbersArray[index] % 2 != 0 ) {
       oneHundredNumbersArray.remove(at: index)
    } else if ( oneHundredNumbersArray[index] % 3 == 0 ) {
        oneHundredNumbersArray.remove(at: index)
    }
}

print(oneHundredNumbersArray)



////Задание №4  решил 3 способами
//func arrayProcessing( _ arrayValue: [Int]) ->[Int] {
//    var arrayValue = arrayValue
//    arrayValue = arrayValue.filter(){ $0 % 2 != 0 } //Удаляем из массива все нечётный числа
//    arrayValue = arrayValue.filter(){ $0 % 3 == 0 } //Удаляем из массива все числа которые не делятся на 3
//    //    arrayValue.removeAll(where: { $0 % 2 != 0 }) //   Второй вариант решения
//    //    arrayValue.removeAll(where: { $0 % 3 == 0 })
//    print(arrayValue)
//    return arrayValue
//}
//oneHundredNumbersArray = arrayProcessing( oneHundredNumbersArray )

// 3-й вариант решения
//var newArray: [Int] = []
//for elem in oneHundredNumbersArray where (elem % 2 != 0 && elem % 3 == 0) {
//    newArray.append(elem)
//}
//oneHundredNumbersArray = newArray

// Задание 5

var arrayFromNewNumber: [Int] = []
var firstNumber = Int.random(in: 0...1)

// Сначало формируем нужное нам число
func numberFib( number: Int) -> Int {
    if (number < 2) {
        return number
    } else {
        return (number - 1 + number - 2)
    }
}

//Функция для генерации и добавление случайных чисел
func addNewNumberInArray( _ arrayFromNumber: [Int]) {
    var arrayFromNumber = arrayFromNumber
    for _ in 0...49 {
        arrayFromNumber.append(numberFib(number: firstNumber))
        firstNumber = Int.random(in: 0...10)
    }
    print(arrayFromNumber)
}

addNewNumberInArray( arrayFromNewNumber )

//Задание 6, выполнил как понял

var arrayOfPrimeNumbers: [Int] = []
//Заполнение массива простыми числами
for elem in (2...1000)  {
    if (arrayOfPrimeNumbers.count == 100 ) {
        break
    } else if ( elem <= 3 ) {
        arrayOfPrimeNumbers.append( elem )
    } else if (elem > 3 && elem < 10 && elem % 2 != 0 ) {
        arrayOfPrimeNumbers.append( elem )
    } else if (elem > 9 && elem % 2 != 0 && elem % 3 != 0 && elem % 5 != 0 && elem % 7 != 0) {
        arrayOfPrimeNumbers.append( elem )
    }
}
print(arrayOfPrimeNumbers)


