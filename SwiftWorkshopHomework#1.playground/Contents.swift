//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var intArray = [20,15,11,2,3,6,3,5,1,3,14,2,1]


for i in stride(from: intArray.count-1, through:1, by: -1) {

    for j in 0..<i {
        if intArray[j] > intArray[j+1] {
            let temp = intArray[j]
            intArray[j] = intArray[j+1]
            intArray[j+1] = temp
        }
    }
}
print(intArray)

var rangeTestString = "almakorteszilvabarack"

print("-------------")

extension String {
    mutating func reverseW() {
        let c = self.characters.count-1
        for index in 0...c {
            let strIndex = self.index(self.startIndex, offsetBy: c-index)
            self.insert(self.remove(at: self.startIndex), at: strIndex)
            //print(self)
        }
    }
}

rangeTestString.reverseW()
print(rangeTestString)

