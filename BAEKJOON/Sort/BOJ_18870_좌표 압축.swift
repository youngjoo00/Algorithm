// BOJ_18870_좌표 압축.swift
// 수직선 위에 N개 x좌표를 입력받아서 좌표 압축 후 정렬

// 좌표 압축 알고리즘 (기본적으로 해당 알고리즘은 정렬, 이분 탐색을 이용한다.)

// 1. 입력받은 배열과 별도의 배열을 하나 선언한다. (이때, 이 별도의 배열을 '압축 배열'이라고 명명하겠다. 해당 압축 배열에 입력받은 배열에 대해 오름차순 정렬한다.)
// 2. 압축 배열의 중복 요소를 제거한다.
// 3. 이제 입력 배열의 요소값과 같은 압축 배열의 요소값을 탐색한다. 탐색에 성공하면(같으면), 해당 위치의 인덱스를 출력한다.

// 시간초과 안나는 다른 사람 코드
let N = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int($0)! }
let compressionArr: [Int] = Set(x).sorted()
var dic: [Int:Int] = [:]

// 딕셔너리에 정렬된 배열을 순서대로 넣어서 key: compressionArr[i], value: index 가 되었다.
// 이 과정을 통해 x의 값을 들고 딕셔너리의 키에 접근하면 해당 압축 값을 알아낼 수 있다.
for (i, x) in compressionArr.enumerated() {
    dic[x] = i
}

// x 배열의 값을 순서대로 딕셔너리 키에 넣어서 출력한다.
for i in x {
    print(dic[i]!, terminator: " ")
}

// 이 코드는 내가 직접 짠 코드지만 firstIndex 를 매 반복마다 사용해서 시간 초과이다..
//let N = Int(readLine()!)!
//var x: [Int] = []
//
//x = readLine()!.split(separator: " ").map { Int($0)! }
//var compressionArr: [Int] = Set(x).sorted()
//var result = ""
//for i in x {
//    result += "\(compressionArr.firstIndex(of: i)!) "
//}
//
//print(result)

//5
//2 4 -10 4 -9

//2 3 0 3 1