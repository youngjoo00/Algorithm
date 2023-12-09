// BOJ_10989_수 정렬하기 3.swift
// 첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.
// counting sort 사용

// 1. 빠른 파일입출력을 사용하지 않고 해결한 코드
// 0~10000 까지 존재하는 배열을 선언하고, 모두 0 할당
var countingArr = [Int](repeating: 0, count: 10001)
let n = Int(readLine()!)!

// 입력 받은 값은 배열의 요소에 직접 접근하여 해당 요소의 count 를 1씩 올려준다.
for _ in 0..<n {
    countingArr[Int(readLine()!)!] += 1
}

// 결과물로 쓰일 String 변수
var result = ""

// 1부터 repeating 함수를 이용해 순서대로 i 값을 countingArr[i] 번 반복하여 문자열로 뽑아내서 result 에 붙여넣음
for i in 1...10000 {
    result += String(repeating: "\(i)\n", count: countingArr[i])
}

print(result)

// 2. 함수를 이용한 일반적인 counting sort 
func countingSort(_ arr: [Int]) -> [Int] {
   guard let max = arr.max() else {
       return arr
   }

   var countingArr = Array(repeating: 0, count: max + 1)
   var sortedArr = Array(repeating: 0, count: arr.count)

   for num in arr {
       countingArr[num] += 1
   }

   var currentIndex = 0
   for (num, count) in countingArr.enumerated() {
       for _ in 0..<count {
           sortedArr[currentIndex] = num
           currentIndex += 1
       }
   }

   return sortedArr
}

let input = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<input {
   arr.append(Int(readLine()!)!)
}

let sortedArr = countingSort(arr)
sortedArr.forEach { print($0) }

// 3. 개념만 이해하고 직접 짜본 코드
let input = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<input {
   arr.append(Int(readLine()!)!)
}

// arr 배열에 있는 가장 큰 값만큼 카운팅 배열에 공간을 만들어줌
var countArr: [Int] = Array(repeatElement(0, count: arr.max()!+1))

// arr 배열에 있는 값을 카운팅 배열의 요소에 접근시켜 +1 시켜줌
for i in arr {
   countArr[i] += 1
}

// 각 값의 시작지점을 알기 위해 카운팅 배열에 누적합을 진행한다.
for i in 1..<countArr.count {
   countArr[i] += countArr[i-1]
}

// 이제 정렬을 시작할건데 순서가 있다.
// 1. arr 배열의 마지막 index 에 있는 값부터 시작
// 2. arr[i] 의 값은 countArr 의 인덱스를 의미하며, countArr[i] 의 값은 누적합을 의미하기에 값을 -1 해서 result 배열의 요소에 들어간다.
// 3. arr 배열의 처음 index 까지 진행한다.

var result: [Int] = Array(repeatElement(0, count: arr.count))

for i in stride(from: arr.count-1, through: 0, by: -1) {
   countArr[arr[i]] -= 1
   result[countArr[arr[i]]] = arr[i]
}

print(result)