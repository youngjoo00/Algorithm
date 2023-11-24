// 27. 문자와 문자열
// 단어 S를 주었을 때 S의 i번째 단어 출력

//let inputS = readLine()!
//let i = Int(readLine()!)!
//
//print(inputS[inputS.index(inputS.startIndex, offsetBy: i-1)])
// 스트링 값은 배열과 분명히 다름
// 스트링 변수의 특정 값을 구하기 위해서는 str[str.index(i:, offsetBy:)] 를 이용해야 함


// 28. 단어 길이 재기

//let inputS = readLine()!
//
//print(inputS.count)



// 29. 문자열을 입력으로 주면 문자열의 첫 글자와 마지막 글자를 출력하는 프로그램을 작성하시오.

//let testCase = Int(readLine()!)!
//
//for _ in 0..<testCase {
//    let str = readLine()!
//    print("\(str[str.startIndex])\(str[str.index(before: str.endIndex)])")
//}
//
////print("\(str.first!)\(str.last!)") // 이렇게도 가능하다
//
//// 스위프트 이 미친놈들은 str.endIndex 의 값을 문자열의 전체 개수로 반환해줘서 오류가 발생하기에 str.index(before: ) 를 사용해주어서 문자열 전체 개수의 -1 값을 넣어주도록 유도해야한다.
//let str = "Hello"
//
//print(str.startIndex) // Index(_base: Swift.String.UnicodeScalarView.Index(_position: 0), _countUTF16: 1)
//print(str.endIndex) // Index(_base: Swift.String.UnicodeScalarView.Index(_position: 5), _countUTF16: 0)


// 30. 아스키 코드
// 알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.

//let str = readLine()!
//let ch = Character(str)
//
//print(Int(ch.asciiValue!))

// 아스키 코드를 뽑아내기 위해서는 readLine 으로 입력받은 값을 문자로 변환시키고,
// 변환시킨 문자.asciiValue! 로 uni8 자료형으로 아스키 값 뽑아내고 -> Int 자료형으로 변환시켜서 사용한다.


// 31. 숫자의 합

//let n = Int(readLine()!)!
//
//let input = readLine()!.map { (str:Character) -> Character in
//    return str
//}
//
//var reslut : Int = 0
//
//for char in input {
//    reslut += char.wholeNumberValue!
//}
//
//print(reslut)

// 1. 입력한 값(String)을 문자 배열로 변환
// 2. for in 문으로 문자 배열의 요소를 이용하여 접근 -> 접근한 요소.wholeNumberValue! 를 이용하여 문자를 Int 값으로 변경


// 32. 숫자의 합

//let n = Int(readLine()!)!
//
//let input = readLine()!.map { (str:Character) -> Character in
//    return str
//}
//
//var reslut : Int = 0
//
//for char in input {
//    reslut += char.wholeNumberValue!
//}
//
//print(reslut)

// 1. 입력한 값(String)을 문자 배열로 변환
// 2. for in 문으로 문자 배열의 요소를 이용하여 접근
// 3. 접근한 요소.wholeNumberValue! 를 이용하여 문자를 Int 값으로 변경



// 33. 알파벳 찾기
// 알파벳 소문자로만 이루어진 단어 S가 주어진다.
// 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.

//// a~z 까지의 ascii 값을 배열에 선언
//let asciiArr = [Int](97...122)
//
//// 입력받은 값을 문자 배열로 변환
//let s = readLine()!.map { (str:Character) -> Character in
//    return str
//}
//
//// 배열에 26개의 -1 값 선언
//var sArr = [Int](repeating: -1, count: 26)
//
//var count = 0
//
//// s배열에 ch로 요소에 접근
//for ch in s {
//    // sArr[asciiArr 배열에 ch 값을 아스키코드로 변경한 값이 있으면 인덱스 추출]
//    if sArr[asciiArr.firstIndex(of: Int(ch.asciiValue!))!] == -1 {
//        sArr[asciiArr.firstIndex(of: Int(ch.asciiValue!))!] = count
//    }
//    count += 1
//}
//
//sArr.forEach { print($0, terminator: " ") }

//baekjoon

//1 0 -1 -1 2 -1 -1 -1 -1 4 3 -1 -1 7 5 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1



// 34. 문자열 반복

//let testCase = Int(readLine()!)!
//
//for _ in 0..<testCase {
//    var reslut = [String]()
//    let input = readLine()!.map{ $0 }
//    let R = Int(String(input[0]))!
//    for i in 2...input.count-1 {
//        reslut.append(String(repeating: input[i], count: R))
//    }
//    print(reslut.joined(separator: ""))
//}
//
////let count = Int(readLine()!)!
////for _ in 0..<count {
////    let input = readLine()!.split(separator: " ").map { String($0) }
////    print(input[1].map{ String(repeating: $0, count: Int(input[0])!) }.joined())
////}

//let str = String(repeating: "ㅋ", count: 10)
//2
//3 ABC
//5 /HTP
//
//AAABBBCCC
/////HHHHHTTTTTPPPPP

//let input = readLine()!.split(separator: " ").map { String($0) }
//
//// 1. 배열[i]을 몽땅 집어넣을때
//print(input.map { _ in String(repeating: input[1], count: 5)} )
//// input => 2 abc
//// ["abcabcabcabcabc", "abcabcabcabcabc"]
//
//// 2. 배열의 전체 요소를 각각 집어넣을때
//print(input.map { String(repeating: $0, count: 5)} )
//// input => 2 abc
//// ["22222", "abcabcabcabcabc"]
//
//// 3. 배열[1]의 요소를 각각 집어넣을때
//print(input[1].map { String(repeating: $0, count: 5)} )
//// input => 2 abc
//// ["aaaaa", "bbbbb", "ccccc"]



// 35. 단어의 개수

//print(readLine()!.split(separator: " ").map { String($0) }.count)


// 36. 상수(2908)

//print(readLine()!.split(separator: " ").map { (str:Substring) -> Int in
//    return Int(String(str.reversed()))!
//})

//print(readLine()!.split(separator: " ").map { String($0.reversed()) }.max()!)

// reversed 사용법
// reversed 를 사용하여 바로 값을 뽑아내면 ReversedCollection<Array<Element>> 이런 형태로 나타난다.
// 제대로 사용하기 위해서는 String() 으로 감싸주어야 한다.

// max() 함수는 Comparable 프로토콜을 준수하는 타입(예를들어 :String, Int 과 같은 자료형들)이라면 사용이 가능하다. (min 도 사용가능)

//734 893

//437


// 37. 다이얼(5622)

//let input = readLine()!.map { $0 }
//var result = 0
//
//for i in input {
//    switch i {
//        // 문자도 범위를 지정할 수 있다.
//    case "A"..."C":
//        result += 3
//    case "D"..."F":
//        result += 4
//    case "G"..."I":
//        result += 5
//    case "J", "K", "L":
//        result += 6
//    case "M", "N", "O":
//        result += 7
//    case "P", "Q", "R", "S":
//        result += 8
//    case "T", "U", "V":
//        result += 9
//    case "W", "X", "Y", "Z":
//        result += 10
//    default:
//        break
//    }
//}
//
//print(result)

// ABC -> 3초
// DEF -> 4초
// GHI -> 5초
// JKL -> 6초
// MNO -> 7초
// PQRS -> 8초
// TUV -> 9초
// WXYZ -> 10초

// WA

// 13


// 38. 그대로 출력하기(11718)

// 제한 없이 계속해서 입력 받는 방법
//while let input = readLine() {
//    print(input)
//}
