// 삼각형 외우기_10101.swift
//세 각의 크기가 모두 60이면, Equilateral
//세 각의 합이 180이고, 두 각이 같은 경우에는 Isosceles
//세 각의 합이 180이고, 같은 각이 없는 경우에는 Scalene
//세 각의 합이 180이 아닌 경우에는 Error

let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!
let input3 = Int(readLine()!)!

if input1 == 60 && input2 == 60 && input3 == 60 {
    print("Equilateral")
} else if input1 + input2 + input3 == 180 {
    if (input1 == input2) || (input1 == input3) || (input2 == input3) {
        print("Isosceles")
    } else {
        print("Scalene")
    }
} else {
    print("Error")
}

//60
//70
//50

//Scalene