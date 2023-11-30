// 62. 소인수분해_11653.swift
// N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다. N이 1인 경우 아무것도 출력하지 않는다.

var N = Int(readLine()!)!
var arr = [Int]()

while N != 1 {
    for i in 2...N {
        if N % i == 0 {
            arr.append(i)
            N /= i
            break
        }
    }
}

arr.sorted().forEach { print($0) }

// 반복문을 하나만 사용하는 방법이 있었다.
// b < c*c 를 이용해 b가 소수인지 판단하였고,
// 소수가 아닐때는, 약수로 나눠서 소수가 되도록 만든다.

var b = Int(readLine()!)!
var c = 2
while b > 1 {
    if b < c * c {
        print(b)
        break
    }
    if b % c == 0 {
        print(c)
        b /= c
    } else {
        c += 1
    }
}
// 72
//2
//2
//2
//3
//3

// 9991
// 97
// 103
