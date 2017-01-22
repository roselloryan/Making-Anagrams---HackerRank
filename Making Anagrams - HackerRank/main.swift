
import Foundation

let stringOne = "aaaaaaecd"
let stringTwo = "abc"

var dictOne: [String: Int] = [:]
var dictTwo: [String: Int] = [:]
var lettersInCommon = 0

var hasStartedLoop = false

for char in stringOne.characters {
    
    if dictOne.keys.contains(String(char)) {
        print("char: \(char)")
        dictOne[String(char)]! += 1
    }
    else {
        dictOne[String(char)] = 1
    }
    
    if hasStartedLoop == false {
        hasStartedLoop = true
 
        for char in stringTwo.characters {
        
            if dictTwo.keys.contains(String(char)) {
            
                dictTwo[String(char)]! += 1
            }
            else {
                dictTwo[String(char)] = 1
            }
        }
    }
}

print("dictTwo: \(dictTwo)")
print("dictOne: \(dictOne)")

for key in dictOne.keys {
    
    if dictTwo[key] != nil {

        var commonCount: Int

        if dictTwo[key]! >= dictOne[key]! {
            commonCount = dictOne[key]!
        }
        else {
            commonCount = dictTwo[key]!
        }
        lettersInCommon += commonCount
    }
}
print("lettersInCommon: \(lettersInCommon)")

var deletes = (stringOne.characters.count - lettersInCommon) + (stringTwo.characters.count - lettersInCommon)

print("deletes: \(deletes)")






