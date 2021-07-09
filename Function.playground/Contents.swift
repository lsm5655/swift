import UIKit

//func printFullName(_ firstName: String, _ lastName: String) {
//    print("fullname is \(firstName) \(lastName)")
//}
//printFullName("Jason", "Lee")
//
//func printFullNameReturn(firstName: String, lastName: String) -> String {
//    return "\(firstName) \(lastName)"
//}
//let name = printFullNameReturn(firstName: "Jason", lastName: "Lee")
//name


func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Int, 개수: Int) {
    print("Total Price: \(가격 * 개수)")
}


// In-out parameter

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// ---- Function as a param

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4,2)
function = subtract
function(4,2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)

// 함수는 10줄이상 안짜는게 좋음
// 작은함수로 쪼개기

// -- Optional
// ?를 씀으로써 값이 있을수도 있고 없을수도 있다
// 값이 없을때는 nil

var carName: String?
carName = nil
carName = "땡크"

// 영화배우의 이름을 담는 변수를 작성해주세요

var actorName: String? = "김다미"
let num = Int("10") // num 타입은 Int?

// 고급 기능 4가지

// Forced unwrapping -> 억지로 박스를 까보기
// Optional binding (if let) -> 부드럽게 박스를 까보자 1
// Optional binding (guard) -> 부드럽게 박스를 까보자 2
// Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

// 1번
carName = nil
//print(carName!)

// 2번
//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//} else {
//    print("Car Name 없다")
//}

//func printParsedInt(from: String) {
//    if let paresdInt = Int(from) {
//        print(paresdInt)
//        // Cyclomatic Complexity
//    } else {
//        print("Int로 컨버팅 안된다 짜샤.")
//    }
//}

//printParsedInt(from: "100")
//printParsedInt(from: "헬로우 마이네임이즈")

//3번
func printParseInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안된다 짜샤. ")
        return
    }
    
    print(parsedInt)
}

// 4번
let myCarName: String = carName ?? "모델 S"

// --- 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성 (String?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

let foodName: String? = "햄버거"

if let parsedFood = foodName {
    print(parsedFood)
} else {
    print ("좋아하는 음식 없음")
}

func printNickName(name: String?) {
    guard let nickName = name else {
        print("nickname 만들어 보자")
        return
    }
    print(nickName)
}

printNickName(name: nil)


