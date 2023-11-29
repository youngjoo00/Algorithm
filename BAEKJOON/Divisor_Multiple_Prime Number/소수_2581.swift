// 61. 소수_2581.swift
//자연수 M과 N이 주어질 때 M이상 N이하의 자연수 중 소수인 것을 모두 골라 이들 소수의 합과 최솟값을 찾는 프로그램을 작성하시오.
//ex) M=60, N=100인 경우 60이상 100이하의 자연수 중 소수는 61, 67, 71, 73, 79, 83, 89, 97 총 8개가 있으므로,
//이들 소수의 합은 620이고, 최솟값은 61이 된다.
// 단, M이상 N이하의 자연수 중 소수가 없을 경우는 첫째 줄에 -1을 출력한다.

let M = Int(readLine()!)!
let N = Int(readLine()!)!

var arr = [Int](M...N)
var result = [Int]()

if arr.contains(1) {
    arr.remove(at: arr.firstIndex(of: 1)!)
}

for i in arr {
    var count = 0
    for j in 1...i {
        if i % j == 0 {
            count += 1
        }
    }
    if count <= 2 {
        result.append(i)
    }
}

if result.isEmpty {
    print(-1)
} else {
    print(result.reduce(0) {$0 + $1})
    //위 코드는 아래의 이 코드를 생략한 것이다.
    //print(result.reduce(0) { (result:Int, element:Int) -> Int in
    //    return result+element
    //})
    print(result.min()!)
}

// filter 함수를 이용하여 효율적으로 코딩하고 싶었는데 아래의 방법을 찾았다.
let m = Int(readLine()!)!
let n = Int(readLine()!)!

// m...n 범위에 필터함수를 사용하여 각각의 값이 1...num 범위로 접근하도록 했고,
// 1...num 범위 즉, '1부터 m~n 범위의 숫자 하나'에 필터함수를 사용하여 각각의 값이 'num % $0 == 0' 조건에 맞는 배열이 2개있다면,
// 배열에 소수값에 해당하는 값들을 넣기를 반복 -> 모든 값이 필터링 되었다면 res 에 최종적으로 소수만 들어있는 배열이 들어감
let res = (m...n).filter { num in
    (1...num).filter { num % $0 == 0 }.count == 2
}

if let min = res.min() {
    print(res.reduce(0, +))
    print(min)
} else {
    print(-1)
}

//60
//100
//
//620
//61

//64
//65
//
//-1