import UIKit

// 문제 : 가장 가까운 편의점 찾기

// 맨처음 시작시... 코드
//
//struct Location {
//    let x: Int
//    let y: Int
//}
//
//struct Store {
//    let loc: Location
//    let name: String
//    let deliveryRange = 2.0
//
//    func isDeliverable(userLoc: Location) -> Bool {
//        let distanceToStore = distance(current: userLoc, target: loc)
//        return distanceToStore < deliveryRange
//    }
//}

// 현재 스토어 위치들
//let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
//let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
//let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")

// 거리구하는 함수

//func distance(current: Location, target: Location) -> Double {
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}

// 가장 가까운 스토어 구해서 프린트 하는 함수
//func printClosestStore(currentLocation: Location, stores: [Store]) {
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//    var isDeliverable = false
//
//    for store in stores {
//        let distanceToStore = distance(current: currentLocation, target: store.loc)
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//            isDeliverable = store.isDeliverable(userLoc: currentLocation)
//        }
//    }
//    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
//}

// Stores Array 세팅, 현재 내 위치 세팅
//let myLocation = Location(x: 2, y: 5)
//let stores = [store1, store2, store3]
//
//printClosestStore(currentLocation: myLocation, stores: stores)


// 도전 과제
// 1. 강의 이름, 강사 이름, 학생 수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

struct Lecture {
    let lectureName: String
    let teacherName: String
    let studentNum: Int
}

let lecture1 = Lecture(lectureName: "수학", teacherName: "John", studentNum: 5)
let lecture2 = Lecture(lectureName: "영어", teacherName: "Andrew", studentNum: 6)
let lecture3 = Lecture(lectureName: "과학", teacherName: "Sam", studentNum: 9)

func printTeacherName (findTeacherName: String, lectures: [Lecture]) {
    var name = ""
    for lecture in lectures {
        if lecture.teacherName == findTeacherName {
            name = lecture.lectureName

        }
    }
    print(name)
}

let teacherName = "John"
let lectures = [lecture1, lecture2, lecture3]

printTeacherName(findTeacherName: teacherName, lectures: lectures)
