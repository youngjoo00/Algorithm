// BOJ_10814_나이순 정렬.swift
//온라인 저지에 가입한 사람들의 나이와 이름이 가입한 순서대로 주어진다.
//이때, 회원들을 나이가 증가하는 순으로, 나이가 같으면 먼저 가입한 사람이 앞에 오는 순서로 정렬하는 프로그램을 작성하시오.

struct memberData {
    var age: Int
    var name: String
}

let N = Int(readLine()!)!
var memberList: [memberData] = []

for _ in 0..<N {
    let data = readLine()!.split(separator: " ")
    memberList.append(memberData(age: Int(data[0])!, name: String(data[1])))
}

memberList.sorted {
    // 나이가 다르면 나이끼리 비교해서 오름차순 정렬
    if $0.age != $1.age {
        return $0.age < $1.age
    }
    // 나이 조건 충족이 안될경우 반드시 정렬이 안되도록 false 로 반환
    return false
}.forEach { print("\($0.age) \($0.name)") }

//3
//21 Junkyu
//21 Dohyun
//20 Sunyoung
//
//20 Sunyoung
//21 Junkyu
//21 Dohyun