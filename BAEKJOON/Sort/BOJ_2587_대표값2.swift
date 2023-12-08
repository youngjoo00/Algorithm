// BOJ_2587_대표값2.swift
//다섯 개의 자연수가 주어질 때 이들의 평균과 중앙값을 구하는 프로그램을 작성하시오.

var arr: [Int] = []

for _ in 0..<5 {
    arr.append(Int(readLine()!)!)
}

// arr.sorted()[index] : 정렬 작업이 끝난 배열의 요소에 접근할 수 있다.
print("\(arr.reduce(0, +)/5)\n\(arr.sorted()[2])")

//10
//40
//30
//60
//30
//
//34
//30