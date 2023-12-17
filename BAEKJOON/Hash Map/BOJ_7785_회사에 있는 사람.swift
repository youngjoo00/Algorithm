// BOJ_7785_회사에 있는 사람.swift
// 각 사람의 이름이 주어지고 "enter"나 "leave"가 주어진다. "enter"인 경우는 출근, "leave"인 경우는 퇴근이다.
// 현재 회사에 있는 사람의 이름을 사전 순의 역순으로 한 줄에 한 명씩 출력한다.

let n = Int(readLine()!)!
var person: Set<String> = []

for _ in 0..<n {
    let data = readLine()!.split(separator: " ")
    if data[1] == "leave" {
        person.remove(String(data[0]))
    } else {
        person.insert(String(data[0]))
    }
}

person.sorted(by: >).forEach { print($0) }

//4
//Baha enter
//Askar enter
//Baha leave
//Artem enter
//
//Askar
//Artem