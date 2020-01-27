import UIKit


let text = Array("Life...isATaleToldByAnIdiot,FullOfSoundAndFury,SignifyingNothing.-WilliamShakespeare")

var p1: String
var p2: String

var repAux: Int = 0

var mostRepeated: String?
var numberOfTimesRepeated: Int = 0
var dicLetterNumber: [String:Int] = [:]

for i in 0..<text.count/2 {
    p1 = text[i].lowercased()
    p2 = text[text.count-1-i].lowercased()
    
    repAux = (dicLetterNumber[p1] ?? 0) + 1
    dicLetterNumber[p1] = repAux
    if repAux > numberOfTimesRepeated {
        mostRepeated = p1
        numberOfTimesRepeated = repAux
    }

    repAux = (dicLetterNumber[p2] ?? 0) + 1
    dicLetterNumber[p2] = repAux
    if repAux > numberOfTimesRepeated {
        mostRepeated = p2
        numberOfTimesRepeated = repAux
    }
}

if text.count%2 != 0 {
    p1 = text[text.count/2].lowercased()
    repAux = (dicLetterNumber[p1] ?? 0) + 1
    dicLetterNumber[p1] = repAux
    if repAux > numberOfTimesRepeated {
        mostRepeated = p1
        numberOfTimesRepeated = repAux
    }
}

print("the most repeated letter is \(mostRepeated), being repeated \(numberOfTimesRepeated) times")


//This method solved the problem in a o(n/2) time, considering that the time to alloc the let 'text' is not taken in count. If this method to alloc that list is higher than o(n/2), a method to access the string character by an index could be created.



