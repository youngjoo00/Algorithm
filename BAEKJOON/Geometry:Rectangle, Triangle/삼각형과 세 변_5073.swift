// 삼각형과 세 변_5073.swift
//Equilateral :  세 변의 길이가 모두 같은 경우
//Isosceles : 두 변의 길이만 같은 경우
//Scalene : 세 변의 길이가 모두 다른 경우
//단 주어진 세 변의 길이가 삼각형의 조건을 만족하지 못하는 경우에는 "Invalid" 를 출력한다.
//예를 들어 6, 3, 2가 이 경우에 해당한다. 가장 긴 변의 길이보다 나머지 두 변의 길이의 합이 길지 않으면 삼각형의 조건을 만족하지 못한다.

while let input = readLine()?.split(separator: " ").map({ Int($0)! }).sorted(), input != [0, 0, 0] {
    let a = input[0], b = input[1], c = input[2]
    
    if a + b <= c {
        print("Invalid")
    } else if a == b && b == c && a == c {
        print("Equilateral")
    } else if a == b || a == c || b == c {
        print("Isosceles")
    } else {
        print("Scalene")
    }
}

//7 7 7
//6 5 4
//3 2 5
//6 2 6
//0 0 0

//Equilateral
//Scalene
//Invalid
//Isosceles