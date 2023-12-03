// 수학은 비대면강의입니다_19532.swift
// abcdef 수 가 주어졌을 때 -> 연립방정식에서 x, y 값을 계산하시오.

// 1. 200^2 = 400만 -> 0.4초 만에 가능해서 브루트 포스를 사용
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]

for i in -999...999 {
    for j in -999...999 {
        if (a * i + b * j == c) && (d * i + e * j == f) {
            print(i, j)
            break
        }
    }
}

// 2. 연립방정식을 풀어서 수학으로 사용
// ax + by = c
// dx + ey = f

// x를 구하기 위해서는 y를 지워내기 위해 각각의 방정식에 y에 해당하는 계수를 서로 곱해줌
//   aex + bey = ce
// - bdx + bey = bf
// ------------------
// aex - bdx = ce-bf -> 결합 법칙으로 묶어주면 x(ae-bd) = (ce-bf)
// 이항하면, x(ae-bd)/(ae/bd) = (ce-bf)/(ae/bd)
// x = (ce-bf)/(ae/bd) 가 된다.
// y도 이렇게 찾아주면 끝이다.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]

print((c*e-b*f) / (a*e-b*d))
print((c*d-a*f) / (d*b-a*e))

//1 3 -1 4 1 7
//2 -1

//2 5 8 3 -4 -11
//-1 2