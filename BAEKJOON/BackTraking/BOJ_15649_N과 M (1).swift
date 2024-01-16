// BOJ_15649_N과 M (1).swift
// 1. 1부터 N까지 자연수 중에서 중복 없이 M개를 고른 수열
// 2. 수열은 사전 순으로 증가하는 순서로 출력해야 한다.
// 끝나는 조건 - M개의 숫자를 고르면 끝

// 이 문제를 풀기위한 순서
// 1. 어떻게 시작할것인가? - 빈 배열에서부터 시작해서 1~N 을 탐색한다.
// 2. 끝나는 조건은 무엇인가? - 배열.count == M 일 경우 끝난다.
// 3. 어떤 아이디어로 재귀를 할 것인가? - 자신이 방문했던 기록을 확인하며 방문하지 않았을 경우, 자신의 배열을 합쳐서 재귀한다.

// 솔직히 개념은 알아도 구현하려고 하면, 백트래킹을 처음 접한 사람은 자신의 생각으로는 절대 못풀지 않을까 싶을정도로 재귀 아이디어가 떠오르지 않았다.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (input[0], input[1])

var visited = [Bool](repeatElement(false, count: N + 1))
var arr: [Int] = []

func backTraking(_ arr: [Int]) {
    // 끝나는 조건
    if arr.count == M {
        arr.forEach { print($0, terminator: " ") }
        print()
        return
    }
    
    // 끝이 아니라면 1~N 까지 중복된 수를 제외하고 배열에 수를 집어 넣어야함
    for i in 1...N {
        // 내가 이미 방문했는지 체크
        // 이 방문기록이 재귀를 돌릴수있는 핵심 아이디어
        if !visited[i] {
            // 방문기록 넣기
            visited[i] = true
            // 배열을 합쳐서 재귀
            backTraking(arr + [i])
            // 한바퀴 재귀가 끝났으니 마지막 방문 위치는 false
            visited[i] = false
        }
    }
}

backTraking(arr)

//4 2
//
//1 2
//1 3
//1 4
//2 1
//2 3
//2 4
//3 1
//3 2
//3 4
//4 1
//4 2
//4 3