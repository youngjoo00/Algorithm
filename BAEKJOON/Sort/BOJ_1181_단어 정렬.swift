// BOJ_1181_단어 정렬.swift
//알파벳 소문자로 이루어진 N개의 단어가 들어오면 아래와 같은 조건에 따라 정렬하는 프로그램을 작성하시오.
//1. 길이가 짧은 것부터
//2. 길이가 같으면 사전 순으로
//단, 중복된 단어는 하나만 남기고 제거해야 한다.

let N = Int(readLine()!)!
var words: Set<String> = []

for _ in 0..<N {
    words.insert(readLine()!)
}

words.sorted {
    if $0.count == $1.count {
        return $0 < $1
    }
    return $0.count < $1.count
}.forEach { print($0) }

//13
//but
//i
//wont
//hesitate
//no
//more
//no
//more
//it
//cannot
//wait
//im
//yours

//i
//im
//it
//no
//but
//more
//wait
//wont
//yours
//cannot
//hesitate