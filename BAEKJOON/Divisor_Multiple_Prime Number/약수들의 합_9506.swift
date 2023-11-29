// 59. 약수들의 합_9506.swift
//n이 완전수인지 아닌지 판단해주는 프로그램을 작성하라.

while let input = Int(readLine()!), input != -1 {
    var sum = 0
    var result = [Int]()
    for i in 1..<input {
        if input % i == 0 {
            sum += i
            result.append(i)
        }
    }
    if input == sum {
        // map 을 이용하여 문자열로 변경시킨 뒤, joind 함수로 각 문자 사이를 " + " 로 구분지어줌
        print("\(input) = " + result.map { String($0) }.joined(separator: " + "))
    } else {
        print("\(input) is NOT perfect.")
    }
}

//6
//12
//28
//-1

//6 = 1 + 2 + 3
//12 is NOT perfect.
//28 = 1 + 2 + 4 + 7 + 14