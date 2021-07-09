import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers2: Array<Int> = [2,4,6,8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

let isEmpty = evenNumbers.isEmpty

evenNumbers.count

//print(evenNumbers.first)

//evenNumbers = []
//let firstItem = evenNumbers.last


if let firstElement = evenNumbers.first {
    print("---> first item is :\(firstElement)")
} else {
    print("첫번째 원소가 없습니다")
}

evenNumbers.min()
evenNumbers.max()

var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

//let firstThree = evenNumbers[0...2]

evenNumbers

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)
evenNumbers

//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0 , 2]
evenNumbers

//evenNumbers.swapAt(0, 9)

//for num in evenNumbers {
//    print(num)
//}

for(index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value: \(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
firstThreeRemoved

let lastRemoved = evenNumbers.dropLast()
lastRemoved

let firstThree = evenNumbers.prefix(3)
firstThree

let lastThree = evenNumbers.suffix(3)
lastThree


// ------ Dictionary

var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

scoreDic["Jason"]
scoreDic["Jay"]

if let score = scoreDic ["Jason"] {
    score
} else {
    print("score 없음")
}

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

// 기존 사용자 업데이트
scoreDic["Jason"] = 99
scoreDic

//사용자 추가
scoreDic["Jack"] = 100
scoreDic

// 사용자 제거
scoreDic["Jack"] = nil
scoreDic

// For Loop
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

// 1. 이름, 직업, 도시 에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기

var myDic: [String: String] = ["name": "Zeke", "job": "ios Enginner", "city": "NamYangJu"]

myDic["city"] = "Busan"
myDic

func printNameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("--> Cannot find")
    }
}

printNameAndCity(dic: myDic)


// ------ Set

var someSet: Set<Int> = [1, 2, 3, 1]

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet
someSet.remove(1)
someSet

// Array와 Dictionary가 중요함

var multiplyClosure: (Int, Int) -> Int = {a, b in
    return a * b}

let result = multiplyClosure(4,2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) {a, b in
    return a / b
}


let voidClosure: () -> Void = {
    print("iOS 개발자 짱, 클로저 사랑해")
}

voidClosure()


// Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()
incrementer()
incrementer()

count


// ---- Closure 실습

/*
{(param) => return type_in
    statement
    ....
}
 */


// Example 1: Cho simple Closure
//let choSimpleClosure = {
//
//}
//
//choSimpleClosure()

// Example 2 : 코드블록을 구현한 Closure

//let choSimpleClosure = {
//    print("Hello, 클로져, 코로나 하이!")
//}
//
//choSimpleClosure()

// Example 3 : 인풋 파라미터를 받는 Closure

//let choSimpleClosure: (String) -> Void = { name in
//    print("Hello, 클로져, 하이! 나의 이름은 \(name)입니다!")
//}
//
//choSimpleClosure("zeke")
//

// Example 4: 값을 리턴하는 Closure

//let choSimpleClosure: (String) -> String = { name in
//    let message = "ios 개발 만만세, \(name)님 경제적 자유를 얻으실 거에요!"
//    return message
//}
//
//let closureResult = choSimpleClosure("zeke")
//print(closureResult)

//Example 5: Closure를 파라미터로 받는 함수 구현

//func someSimpleFunction(choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요")
//    choSimpleClosure()
//}
//
//someSimpleFunction (choSimpleClosure: {
//    print("헬로 코로나 from closure")
//})

// Example 6: Trailing Closure

func someSimpleFunction(message: String, choSimpleClosure:() -> Void) {
    print("함수에서 호출이 되었어요, 메세지는 \(message)")
    choSimpleClosure()
}

someSimpleFunction(message: "코로나는 메로나", choSimpleClosure: {
    print("헬로 코로나 from closure")
})
