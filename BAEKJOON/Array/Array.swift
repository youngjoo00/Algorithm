// 18. 모든 점수를 점수/M*100
// 첫째 줄에 시험 본 과목의 개수 N이 주어진다.
// 일단 세준이는 자기 점수 중에 최댓값을 골랐다. 이 값을 M이라고 한다. 그리고 나서 모든 점수를 점수/M*100으로 고쳤다.
// 이 값은 1000보다 작거나 같다. 둘째 줄에 세준이의 현재 성적이 주어진다. 이 값은 100보다 작거나 같은 음이 아닌 정수이고, 적어도 하나의 값은 0보다 크다.

//let n = Int(readLine()!)!
//
//var grade = readLine()!.split(separator: " ").map { Int($0)! }
//
//var filterGrade = [Double]()
//
//if n == grade.count {
//    let max = Double(grade.max()!)
//    for i in 0..<grade.count {
//        filterGrade.append(Double(grade[i])/max*100)
//    }
//}
//
//print(filterGrade.reduce(0.0, +) / Double(n))

//3
//40 80 60
//
//75.0

//3
//10 20 30
//
//66.666667

// max 함수는 리턴값이 옵셔널
// max 함수를 사용하기 위해서는 Comparable이란 프로토콜을 준수 해야하는데 기본적인 자료형들은 모두 준수하고 있기에 자료형끼리의 비교가 가능함
// 반드시 같은 타입끼리 연산이 되어야 함 (배열안의 item 도 마찬가지)


// 19. 총 N개의 정수가 주어졌을 때, 정수 v가 몇 개인지 구하는 프로그램을 작성하시오.
// 첫째 줄에 입력으로 주어진 N개의 정수 중에 v가 몇 개인지 출력한다.

//let n = Int(readLine()!)!
//
//var grade = readLine()!.split(separator: " ").map { Int($0)! }
//
//let v = Int(readLine()!)!
//
//var cal = 0
//
//for i in 0..<grade.count {
//    if v == grade[i] {
//        cal += 1
//    }
//}
//
//print(cal)

//11
//1 4 1 2 4 2 4 2 3 4 4
//2

//3


// 20. 정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.
// X보다 작은 수를 입력받은 순서대로 공백으로 구분해 출력한다. X보다 작은 수는 적어도 하나 존재한다.

//let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//let n = arr[0]
//let x = arr[1]
//
//print(readLine()!
//    .split(separator: " ")
//    .map { Int($0)! }
//    .filter { (number:Int) -> Bool in
//        return number < x
//    } // filter { $0 < x }
//    .map { (number:Int) -> String in
//        return String(number)
//    } //.map { String($0) } or map { "\($0)"}
//    .joined(separator: " "))


//10 5
//1 10 4 9 2 3 8 5 7 6

//1 4 2 3

// map 함수는 배열의 자료형을 인자로 받고, 다른 자료형으로 변경하여 리턴해줌
// Int 로 변경했다가 String 으로도 변경해줌

// filter 함수는 특정 조건을 충족하는 원소만 추려내서 다시 배열을 만들어줌 (자료형 타입은 그대로)
// { $0 < x } 는 0번째 배열부터 끝까지 순서대로 x 와 비교

// joined 함수는 스트링 배열을 하나의 문자열로 합쳐줌
// separator 를 사용하여 각각의 문자를 한 칸씩 띄워주었음


// 21. 첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.

//let n = Int(readLine()!)!
//
//let inputNumber = readLine()!.split(separator: " ").map { (number:Substring) -> Int in
//    return Int(number)!
//}
//
//print(inputNumber.min()!, inputNumber.max()!)

//5
//20 10 35 30 7

//7 35

//let inputNumber = readLine()!.split(separator: " ").map { (number:Substring) -> Int in
//    return Int(number)!
//}

// .split(separator: " ")
// split 으로 문자열을 구분지어서 변경 할 경우 Substring 자료형이 된다.


// 22. 9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.
// ex) 서로 다른 9개의 자연수 3, 29, 38, 12, 57, 74, 40, 85, 61 이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.

//var num : [Int] = []
//
//for _ in 0..<9 {
//    num.append(Int(readLine()!)!)
//}
//
//print(num.max()!)
//print(num.firstIndex(of: num.max()!)!+1)

// firstIndex 함수는 배열의 앞에서부터 조회해서 첫번째로 일치하는 값의 index를 반환한다.

//3
//29
//38
//12
//57
//74
//40
//85
//61
//
//85
//8


// 23. 공 넣기
// 1. 1번부터 N번까지의 바구니가 있음 (가장 처음 바구니에는 공이 없음, 바구니에는 공을 1개만 넣을 수 있음)
// 2. M번 공을 넣으려고 함 (바구니에 공이 이미 있는 경우에 공을 빼고 새로 넣음, 바구니는 연속되어야 함)
// 3. M번 공을 넣기 위한 방법을 입력 함
// Ex) 2 5 6 -> 2번부터 5번까지 6번 공을 넣음

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let n = input[0]
//let m = input[1]
//
//var basket : [Int] = []
//var result = [Int](repeating: 0, count: n)
//// 배열을 count 개수 만큼 repeating 값으로 초기화한다.
//
//for _ in 0..<m {
//    basket = readLine()!.split(separator: " ").map { Int($0)! }
//    result.replaceSubrange(basket[0]-1...basket[1]-1, with : repeatElement(basket[2], count: basket[1] - basket[0] + 1))
//    // replaceSubrange(범위를 지정할 range값 , repeatElement(변경할 값, 변경할 배열의 개수)) 을 이용한다.
//}
//
//print(result.map { (num:Int) -> String in
//    return String(num)
//}.joined(separator: " "))
// result.map { String($0)! }

//5 4
//1 2 3
//3 4 4
//1 4 1
//2 2 2
//
//1 2 1 1 0


// 24. 공 바꾸기
//1. 바구니 N개 (1~N 번호 있음, 바구니에는 공이 1개씩, 처음에는 바구니에 적혀있는 번호와 같은 공이 있음)
//2. M번 공을 바꿈 (공을 바꿀 바구니 2개를 선택하고, 두 바구니의 공을 교환함)
//3. 공을 어떻게 바꿀지 주어지면, M번 바꾼 후에 각각의 바구니에 어떤 공이 있는지 결과 출력
//
//첫째 줄에 N, M 입력
//둘째 줄에 M개의 줄에 걸쳐 공을 교환할 방법 입력, 각 방법은 i, j (정수로 주어지며, 두 바구니에 들어있는 공 교환)

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let n = input[0]
//let m = input[1]
//
//var basket = [Int](1...n)
//
//for _ in 0..<m {
//    let swap = readLine()!.split(separator: " ").map { Int($0)! }
//    basket.swapAt(swap[0]-1, swap[1]-1)
//    // swapAt(변경할 첫번째 요소, 변경할 두번째 요소) 첫 번째 요소와 두 번째 요소의 값을 변경함
//}
//
//print(basket.map { String($0) }.joined(separator: " "))

//5 4
//1 2
//3 4
//1 4
//2 2
//
//3 1 4 2 5


// 25. 과제 안 내신 분..?
// X대학 M교수님은 프로그래밍 수업을 맡고 있다. 교실엔 학생이 30명이 있는데, 학생 명부엔 각 학생별로 1번부터 30번까지 출석번호가 붙어 있다.
// 교수님이 내준 특별과제를 28명이 제출했는데, 그 중에서 제출 안 한 학생 2명의 출석번호를 구하는 프로그램을 작성하시오.

//var student : [Int] = []
//var result = [Int](1...30)
//for i in 0..<28 {
//    student.append(Int(readLine()!)!)
//    if result.contains(student[i]) { //
//        result.remove(at: result.firstIndex(of: student[i])!)
//        // remove(n) 배열의 n 번쨰 요소를 제거함
//    } else {
//        result.append(student[i])
//    }
//}
//
//print(result.min()!)
//print(result.max()!)

// 입력한 student 배열의 요소를 확인하고 true 일 때, fristIndex 로 인덱스를 찾고 removeAt 으로 삭제
// false 일 때, result 배열에 i 값을 추가하고, 마지막에 min, max 를 출력한다.


// 26. 나머지
// 두 자연수 A와 B가 있을 때, A%B는 A를 B로 나눈 나머지 이다. 예를 들어, 7, 14, 27, 38을 3으로 나눈 나머지는 1, 2, 0, 2이다.
// 수 10개를 입력받은 뒤, 이를 42로 나눈 나머지를 구한다. -> 그 다음 서로 다른 값이 몇 개 있는지 출력하는 프로그램을 작성하시오.

//var input : Set<Int> = []
//
//for _ in 0..<10 {
//    input.insert(Int(readLine()!)! % 42)
//}
//
//print(input.count)

// 컬렉션 타입 Set
// 1. 배열과 유사한 컬렉션 타입이지만 정렬되지 않은 컬렉션
// 2. 배열과 달리 중복된 값을 허용하지 않음
// 3. 해시를 통해 값을 저장하기에 빠름
// 4. 저장되는 자료형은 모두 동일해야 함
//
// Set 타입은 insert 를 이용해 컬렉션에 값을 넣는다.


// 26. 바구니 뒤집기
// 모든 순서를 바꾼 다음에, 가장 왼쪽에 있는 바구니부터 바구니에 적혀있는 순서를 공백으로 구분해 출력한다.

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let n = input[0]
//let m = input[1]
//
//var basket = [Int](1...n)
//
//for _ in 0..<m {
//    let range = readLine()!.split(separator: " ").map { Int($0)! }
//    let start = range[0] - 1
//    let end = range[1] - 1
//    basket.replaceSubrange(start...end, with: basket[start...end].reversed())
//}

//basket.forEach { reslut in
//    print(reslut, terminator: " ")
//}

//basket.forEach { print($0, terminator: " ") }

// 이 문제를 간단하게 풀기 위해 replaceSubrange 를 이용했다.
// 입력 받은 범위를 range 로 지정하여 배열의 어떤 범위를 변경할 지 지정이 가능 했고, with: 부분에 내가 원하는 배열의 값으로 변경해 줄 수 있겠다고 생각했다.
// 하지만 range 부분을 설정하는 것은 어렵지 않았지만, with: 부분은 basket.reverse 배열의 특정 요소만 어떻게 빼서 바꿀 수 있을까 한참 고민했는데
// 놀랍게도 배열[i...j] 로 요소의 범위를 지정하여 접근이 가능했다...

//5 4
//1 2
//3 4
//1 4
//2 2
//
//3 4 1 2 5
