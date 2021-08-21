//
//  main.swift
//  AB_training
//
//  Created by Александр Болохов on 05.08.2021.
//

import Foundation


struct MyGeneric<Elem: Comparable> {
    
    var elements: [Elem] = []
    var newMapArray: [Elem] = []
    
    mutating func push(el: Elem) {
        elements.append(el)
    }
    
    mutating func pop() {
       elements.removeFirst()
    }
    
    mutating func sortArray () {
        elements.sort() {$0 > $1}
    }
    
    
    mutating func mapArray () {
        newMapArray = elements.map {$0 as! Int * 2 as! Elem}
        
    }
    
    subscript (index: Int) ->Int? {
        if(index <= elements.count) {
           print(elements[index])
        } else if(index > elements.count) {
            return nil
        }
        return index
    }
        
}

var test = MyGeneric<Int>()
var a = 0
for _ in 0...10 {
    a += 1
    test.push(el: a)
}
print(test.elements)

test.pop()

print(test.elements)

test.sortArray()

print(test.elements)

test.mapArray()

print(test.newMapArray)


print(test[17] as Any)
