# FastCampus_IOS_School 과제

#### [20190311](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190311/20190311_function.playground/Contents.swift)

    - 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
    - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
    - 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
    - 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
    - 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
    - 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

#### [20190312](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190312/20190312_practice.playground/Contents.swift)

    - 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수
    (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)
    - 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
    - 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수
    - 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수
    - 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수
    참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
    (입력된 숫자가 4면 0, 1, 1, 2, 3, 5 ... 에서 4번째 위치인 2 출력.    )
    - 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

#### [20190314](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190314/20190314-enum%26collection.playground/Contents.swift)

    - 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
    ex) 123 -> 321 , 10293 -> 39201
 
    - 주어진 문자 배열에서 중복되지 않는 문자만을 뽑아내 배열로 반환해주는 함수
    ex) ["a", "b", "c", "a", "e", "d", "c"]  ->  ["b", "e" ,"d"]
    
    - 임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
    ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]
    
    - 2개의 자연수와 사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic 을 입력 파라미터로 받아 해당 연산의 결과를 반환하는 함수 구현
    
    - 별도로 전달한 식육목 모식도 라는 자료를 보고 Dictionary 자료형에 맞도록 중첩형태로 데이터를 저장하고
        + 해당 변수에서 표범 하위 분류를 찾아 사자와 호랑이를 출력하기

#### [20190315](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190315/20190315_practice.playground/Contents.swift)
    - 아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기
        ```
        let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in

            let isAscending: Bool

            if s1 > s2 {
                isAscending = true
            } else {
                isAscending = false
            }

            return isAscending

        }


        let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in

            var count: Int = 0

            for _ in values {
                count += 1
            }

            return count

        }
        ```


    - 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수

        ```
            func combineString(str1: String?, str2: String?, str3: String?) -> String {
                // code
            }

            // 입력 예시 및 결과
            // combineString1(str1: "AB", str2: "CD", str3: "EF") -> "ABCDEF"
            // combineString1(str1: "AB", str2: nil, str3: "EF") -> "ABEF"
        ```
        
#### [20190319](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190319/20190319-class.playground/Contents.swift)
    - 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
    ```
         ** 강아지 (Dog)
            - 속성: 이름, 나이, 몸무게, 견종
            - 행위: 짖기, 먹기
            
        ** 학생 (Student)
            - 속성: 이름, 나이, 학교명, 학년
            - 행위: 공부하기, 먹기, 잠자기
            
        ** 아이폰(IPhone)
            - 속성: 기기명, 가격, faceID 기능 여부(Bool)
            - 행위: 전화 걸기, 문자 전송
            
        ** 커피(Coffee)
            - 속성: 이름, 가격, 원두 원산지
    ```
    - 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
    ```
        ** 계산기 (Calculator)
            - 속성: 현재 값
            - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

            ex)
                let calculator = Calculator() // 객체생성
                
                calculator.value  // 0
                
                calculator.add(10)    // 10
                calculator.add(5)     // 15
                
                calculator.subtract(9)  // 6
                calculator.subtract(10) // -4
                
                calculator.multiply(4)   // -16
                calculator.multiply(-10) // 160
                
                calculator.divide(10)   // 16
                calculator.reset()      // 0
    ```

#### [20190321](https://github.com/92pino/IOS_pino/blob/master/%EA%B3%BC%EC%A0%9C/20190315/20190315_practice.playground/Contents.swift)
    - 객체 지향 프로그래밍 (Object-Oriented Programming) 에 대해 예습하기
    - 지난 과제에서 함수를 이용해 풀었던 문제를 클로저로 변형해서 풀어보기
    - 클로저 Full Syntax <-> Optimized Syntax 변환 연습

#### [20190322](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190322/HomeWork_20190322/HomeWork_20190322)
    - UISwitch : On, Off 가 바뀔 때마다 Label 의 내용이 On, Off 로 표시되도록 구현
    - UISegmentedControl : 선택 내용이 바뀔 때마다 Label 의 내용도 해당 타이틀 값으로 함께 변경되도록 구현
    참고로, 위 2개는 버튼과 달리 event 처리를 touchUpInside 가 아니라 valueChanged 라는 것을 활용해야 합니다.

#### [20190325 - 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190325/20190325-UIGuide/20190325-UIGuide)
    - 수업 실습 항목 3번 (3개의 빨강, 파랑, 초록색뷰 추가하기) 을 코드로 구현하기

#### [20190325 - 과제2](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190325/20190325-AlertAction/20190325_AlertAction/20190325_AlertAction)

    - AlertController 를 통해 Label 의 숫자를 1씩 올리거나 초기화하기
    (위 내용을 스토리보드로  구현하기는 연습. 스토리보드 없이 완전히 코드로만으로 구현하는 것이 과제)

#### [20190326 - 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190326/TextField/TextField)

    - 텍스트 필드에 어떤 값을 입력하면 별도의 Label 에 입력된 텍스트 표시.
    - 텍스트 필드가 활성화 되어 있을 땐 Label 의 텍스트 색상이 파란색이고, Font 크기는 40
    - 텍스트 필드가 비활성화되면 Label 텍스트 색상이 빨간색이고, Font 크기는 20

#### [20190326 - 과제2](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190326/ViewControllerDataTransLate)

    - ViewController 데이터 전달
    - AViewController 와 BViewController 를 만들고 각각 하나의 Label 생성.
    - AViewController 와 BViewController 를 전환할 때마다 각 Label 에 화면을 전환한 숫자 1씩 증가

#### [20190409 - AutoLayout 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190409/AutoLayoutPractice)

    - StroyBoard를 이용한 autoLayouta

#### [20190409 - BogusAlertController 과제2](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190409/BogusAlertController)
    - present, dismiss를 이용한 배경색 변경 --> v0.1
    - delegate를 이용한 배경색 변경 --> v0.2

#### [20190411 - 생성자 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190411/Initializer.playground)
- Initializer, Designated, Convenience 생성자 과제

#### [20190411 - UIScrollView 과제2](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190411/ScrollViewPractice)
    - AutoLayout
    - UIScrollView
    - Delegate

#### [20190412 - UITableView 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190412/TableViewPractice)
    - 다중선택
    - 테이블의 셀 선택이 아닌 데이터 index의 값을 select

#### [20190412 - UITableView 과제2](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190412/TableView%EA%B3%BC%EC%A0%9C)

#### [20190415 - UITableView 과제1 - Shopping](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190415/ShoppingItems%20-%20Starter)
    - Shopping Item테이블뷰와커스텀셀을이용해서사고자하는아이템을추가하는기능구현
    - 스크롤이가능하도록아이템최소 15개이상생성(프로젝트에 5개이미지만포함되어있으므로중복사용하거나다른모델을추가원한다면직접이미지추가하여사용)
    - 각아이템은한정된재고수량을가지도록설정
    - 버튼을통해해당아이템의주문수량을늘리려고할때, 재고수량을초과하면셀배경색을일시적으로빨갛게만들고추가로주문불가메시지출력 (print 또는 alert)

#### [20190415 - UITableView 과제2 - Shopping](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190415/TableViewPractice%20-%20Starter)
    - 미리 정해진 동물의 이미지와 텍스트를 테이블뷰에 표현
    - 각 셀의 크기는 80
    - 셀을 선택하면 체크박스가 나타나고 다시 선택하면 체크표시가 해제되도록 구현
   
        - 도전 과제)
        - 테이블뷰의 각 셀을 위아래로 스크롤 했다가 다시 나타낼 때, 체크 표시가 기존에 했던 곳에 정확히 다시 나타나도록 구현

#### [20190430 - Notification 과제1 - RGV](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190430/Notification_Homework)
    - RGBA 값을 지닌 UISlider와 NotificationCenter를 이용해 배경색상 변경하기
    - 탭바컨트롤러의 FirstVC에서 슬라이더값을 조절하고 버튼을 누르면 Notification 이벤트를 발생시키는 코드 작성
    - SecondVC에서 Notification을 전달받아 RGBA를 조합하여 배경색 변경

#### [20190430 - Notification 과제2 - TextField](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190430/Notification_Homework2)
    - FirstVC의 TextField에 입력한 내용을 NotificationCenter를 이용해 SecondVC의 Label로 전달하기
    - NavigationController 이용

#### [20190507 - Gesture 과제1](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190507/GestureRecognizerExample%20-%20Starter)
    - GestureRecognizerExample 프로젝트의 TouchViewController 에서 터치 후 최초 이동 시 부자연스럽게 움직이는 부분을 자연스럽게 움직이도록 구현하기

#### [20190507 - Gesture 도전과제](https://github.com/92pino/IOS_pino/tree/master/%EA%B3%BC%EC%A0%9C/20190507/GestureHomework_190507)
    - 샘플 영상을 보고 동일하게 동작하도록 구현
    - touchesBegan 메서드 이용
    - UITapGestureRecognizer 이용(이전에 탭한 위치에서 거리가 10 이상이면 새로운 탭인 것으로 계산)