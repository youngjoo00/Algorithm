// 54. 벌집_2292.swift

var input = Int(readLine()!)!
var count = 1

while input > 1 {
    input -= 6*count
    count += 1
}

print(count)

// input 값을 6*count 만큼 뺀다.
// 한 번 자를때마다 count += 1
// input 값이 1 이하가 되는 순간이 오면 결과 출력

// 13

// 3