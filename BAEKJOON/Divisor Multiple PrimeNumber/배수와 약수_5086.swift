// 57. 배수와 약수_5086.swift
// 각 테스트 케이스마다 첫 번째 숫자가 두 번째 숫자의 약수라면 factor를, 배수라면 multiple을, 둘 다 아니라면 neither를 출력한다.

// while let 을 이용하여 반복마다 입력 받고, 조건을 달았다.
while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0, 0] {
    if input[1] % input[0] == 0 {
        print("factor")
    } else if input[0] % input[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}

//8 16 factor
//32 4 multiple
//17 5 neither
//0 0