//: [Previous](@previous)
/*:
 # Exercise
 */

/***************************************************
 0 ~ 9 사이의 숫자가 들어있는 배열에서 각 숫자가 몇 개씩 있는지 출력하는 함수
 입력 : [1, 3, 3, 3, 8]
 결과 : "숫자 1 : 1개, 숫자 3 : 3개, 숫자 8 : 1개"
 ***************************************************/


/***************************************************
 [보기] 철수 - apple, 영희 - banana, 진수 - grape, 미희 - strawberry
 위 보기처럼 학생과 좋아하는 과일을 매칭시킨 정보를 Dictionary 형태로 만들고
 스펠링에 'e'가 들어간 과일을 모두 찾아 그것과 매칭되는 학생 이름을 배열로 반환하는 함수
 ***************************************************/


/***************************************************
 100 ~ 900 사이의 숫자 중 하나를 입력받아 각 자리의 숫자가 모두 다른지 여부를 반환하는 함수
 ex) true - 123, 310, 369   /  false - 100, 222, 770
 ***************************************************/

func q01(_ arr: [Int]) {
    // 배열 내 아이템 10개 생성
    var countArray = Array<Int>(repeating: 0, count: 10)
    // arr 배열 돌면서 countArray에 해당 아이템에 +1
    for num in arr {
        countArray[num] += 1
    }
    
    //
    for (number, count) in countArray.enumerated() {
        guard count > 0 else { continue }
        print("숫자 \(number) : \(count)개")
    }
}

let q01Arr: [Int] = [1, 3, 3, 3, 8]

q01(q01Arr)

func q02(_ dict: [String: String]) -> [String] {
    var result: [String] = []
    for (k, v) in dict {
        if v.contains("e") {
            result.append(k)
        }
    }
    return result
}

let q02Dict = [
    "철수" : "apple",
    "영희" : "banana",
    "진수" : "grape",
    "미희" : "strawberry"
]
print(q02(q02Dict))
