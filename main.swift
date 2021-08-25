//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation

//Class для первого задания
class TestClassForErrorFirst {
    
    var testError: [Int: String] = [
        0: "Zero",
        1: "One",
        2: "Two",
        3: "Three"
    ]
    
    //показать элемент по ключу
    func showElementOnKey(key number: Int)  {
        
        //Проверка на наличие элеметов в массиве
        guard self.testError.count != 0  else {
            return print("Массив пуст!")
        }
        //Проверка на cоответсвие ключа
        guard (self.testError[number] != nil) else {
            return print("Такого ключа нет!")
        }
        //Проверки пройдены вывести результат
        return print(self.testError[number]!)
        
    }
}

var testFirst = TestClassForErrorFirst()


//Блок практического применения
testFirst.showElementOnKey(key: 2)

testFirst.showElementOnKey(key: 7)

testFirst.testError.removeAll()

testFirst.showElementOnKey(key: 1)


//Перечисление для второго задания
enum TestError: Error {
    case noElement
    case arryaEmpty
    case keyIsAlready
    case meaningIsAlready
}
//Class для второго задания
class TestClassForErrorTwo {
    
    var testError: [String: Int] = [
        "Zero": 0,
        "One": 1,
        "Two": 2,
        "Three": 3
    ]
    
    var keyArray: String = "Zero"
    //Показать элемент
    func showElementOnKey() throws {
        //Поменял guard на if
        if self.testError.count == 0 {
            throw TestError.arryaEmpty
        }
        
        if self.testError[self.keyArray] == nil {
            throw TestError.noElement
        }
        
        print(self.testError[self.keyArray]!)
        
    }
    //Добавление нового элемента
    func addNewElementInTestError(add key: String, add meaning: Int) throws {
        for (_, value) in testError.enumerated() {
            if key == value.key {
                throw TestError.keyIsAlready
            }
            if meaning == value.value {
                throw TestError.meaningIsAlready
            }
        }
        self.testError[key] = meaning
        print(self.testError)
    }
    
}

var testSecond = TestClassForErrorTwo()


//Первый вариант исполнения
do {
    try testSecond.addNewElementInTestError(add: "Six", add: 6)
} catch TestError.keyIsAlready {
    print("Ключ уже существует!")
} catch TestError.meaningIsAlready {
    print("Такое значение ключа уже есть!")
} catch let error {
    print(error.localizedDescription)
}

testSecond.keyArray = "Five"

//Второй вариант исполнения обернул в функцию
func errorCheckingTestSecond() {
    do {
        try testSecond.showElementOnKey()
    } catch TestError.arryaEmpty {
        print("Массив пуст!")
    } catch TestError.noElement {
        print("Такого ключа нет!")
    } catch let error {
        print(error.localizedDescription)
    }
}

//Блок практики
errorCheckingTestSecond()

testSecond.keyArray = "One"

errorCheckingTestSecond()

testSecond.testError.removeAll()

errorCheckingTestSecond()
