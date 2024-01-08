// BOJ_11478_서로 다른 부분 문자열의 개수.swift
// 문자열 S가 주어졌을 때, S의 서로 다른 부분 문자열의 개수를 구하는 프로그램을 작성하시오.

let S = readLine()!.map { String($0) }

var result: Set<String> = []

// 0~N 까지, 1~N까지 2~N 까지 이런느낌으로 쭉 합해준다.
for i in 0..<S.count {
    var str = ""
    for j in i..<S.count {
        str += S[j]
        result.insert(str)
    }
}

print(result.count)

//ababc

//12