// BOJ_2839_설탕 배달.swift
//상근이가 설탕을 정확하게 N킬로그램 배달해야 할 때, 봉지 몇 개를 가져가면 되는지 그 수를 구하는 프로그램을 작성하시오.
//상근이가 배달하는 봉지의 최소 개수를 출력한다. 만약, 정확하게 N킬로그램을 만들 수 없다면 -1을 출력한다.

var N = Int(readLine()!)!
var result: [Int] = []
var count = 0

// 3과 5 만으로도 나누어 떨어지는지 확인
if N % 3 == 0 {
    result.append(N / 3)
}

if N % 5 == 0 {
    result.append(N / 5)
}

// 5를 한 번씩 빼면서 경우의 수 찾기
while N > 0 {
    N -= 5
    count += 1
    
    if N % 3 == 0 && N > 0 {
        result.append((N/3) + count)
    }
}

print(result.min() ?? -1)

//18
//4

//11
//3