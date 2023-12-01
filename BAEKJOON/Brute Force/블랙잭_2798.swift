// 블랙잭_2798.swift
// n, m 을 입력받고 첫째 줄에 M을 넘지 않으면서 M에 최대한 가까운 카드 3장의 합을 출력한다.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var card = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0


for i in 0..<n {
    for j in i+1..<n {
        for k in j+1..<n {
            let sum = card[i] + card[j] + card[k]
            if (sum <= m) && (result < sum) {
                result = sum
            }
        }
    }
}

print(result)

// 기존엔 생각 없이 모든 반복문을 처음부터 끝까지 돌렸는데, 그럴 필요 없이 n-2, n-1, n 까지 돌리면 반복 횟수를 더 줄일 수 있는 좋은 방법이 있었다.

for i in 0..<n-2 {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            let sum = card[i] + card[j] + card[k]
            if (sum <= m) && (result < sum) {
                result = sum
            }
        }
    }
}

print(result)

//5 21
//5 6 7 8 9

//21