//1. 값 뽑아내기
//let number = readLine()!.split(separator: " ").map{Int($0)}
//
//for item in number {
//    if let value = item {
//        print(value)
//    }
//}
//
//

//2. 나누기
//if let input = readLine() {
//    let number = input.split(separator: " ").compactMap{ Double($0) }
//
//    if number[0] > 0 || number[1] < 10, let a = number.first, let b = number.last {
//        let result = a / b
//        let Stringformatted = String(format: "%.9f", result)
//        print(Stringformatted)
//    }
//}

//3. 2588번 곱셈
//
//import Foundation
//
//var first = Int(readLine()!)!
//var second = Int(readLine()!)!
//
//var secondRemain = second
//var secondQuot = second
//
//for _ in stride(from: 0, through: 2, by: 1) {
//    secondRemain = secondQuot % 10 // 5
//
//    var cal = secondRemain * first
//    print(cal)
//
//    secondQuot = secondQuot / 10
//}
//
//print(first * second)

//4. for in 을 사용할때 num[i] 가 아닌 i 를 사용하라..
//import Foundation
//
//let num = readLine()!.split(separator: " ").map { Int($0)! }
//var cal: Int = 0
//
//
//for i in num {
//    cal = cal + i
//}
//
//print(cal)

// 5. 45분 일찍 알람 설정하기
// 첫째 줄에 두 정수 H와 M이 주어진다. (0 ≤ H ≤ 23, 0 ≤ M ≤ 59) 그리고 이것은 현재 상근이가 설정한 알람 시간 H시 M분을 의미한다.
// 입력 시간은 24시간 표현을 사용한다. 24시간 표현에서 하루의 시작은 0:0(자정)이고, 끝은 23:59(다음날 자정 1분 전)이다. 시간을 나타낼 때, 불필요한 0은 사용하지 않는다.

// 10 10 -> 9 25
// 0 30 -> 23 45
// 23 40 -> 22 55

//import Foundation
//
//let time = readLine()!.split(separator: " ").map { Int($0)! }
//
//
//if (time[0] >= 0 && time[0] < 24) && (time[1] >= 0 && time[1] < 60) {
//    if time[0] == 0 && time[1] - 45 < 0 {
//        let reslutTime = 1440 + (time[1] - 45)
//        let H = reslutTime / 60
//        let M = reslutTime % 60
//
//        print(H, M)
//    } else {
//        let reslutTime = time[0] * 60 + (time[1] - 45)
//        let H = reslutTime / 60
//        let M = reslutTime % 60
//        print(H, M)
//    }
//}

// 10시 10분 -> time[0] * 60 + time[1] = 610분
// 9시 25분은 565분

// 565 / 60 -> 9
// 565 % 60 -> 25

// 0 30 -> time[0] == 0 && time[1] - 45 < 0 ->

// 0 30 -> 1470분 - 45분 => 1425
// 23 45 -> 1425분

// 6. 오븐 시간 맞추기
// 첫째 줄에는 현재 시각이 나온다.
// 현재 시각은 시 A (0 ≤ A ≤ 23) 와 분 B (0 ≤ B ≤ 59)가 정수로 빈칸을 사이에 두고 순서대로 주어진다.
// 두 번째 줄에는 요리하는 데 필요한 시간 C (0 ≤ C ≤ 1,000)가 분 단위로 주어진다.

//import Foundation
//
//let time = readLine()!.split(separator: " ").map { Int($0)! }
//let cookTime = Int(readLine()!)!
//
//if (time[0] >= 0 && time[0] < 24) && (time[1] >= 0 && time[1] < 60) && (cookTime >= 0 && cookTime <= 1000) {
//    var reslutTime = time[0] * 60 + (time[1] + cookTime)
//    if reslutTime >= 1440 {
//        reslutTime = reslutTime - 1440
//        let H = reslutTime / 60
//        let M = reslutTime % 60
//        print(H, M)
//    } else {
//        reslutTime = time[0] * 60 + (time[1] + cookTime)
//        let H = reslutTime / 60
//        let M = reslutTime % 60
//        print(H, M)
//    }
//}

//

// 14 30 -> 14 50
// 20

// 870 ->

// 17 40 -> 19 0
// 80

//

// 23 48 -> 0 13 = 13분
// 25

// time[0] >= 23 && (time[1] + cookTime < 60)
// time[0] >= 24 -> reslut - 1440

// 7. 주사위
//같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다.
//같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다.
//모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.

//import Foundation
//
//let dice = readLine()!.split(separator: " ").map { Int($0)! }
//
//if dice[0] == dice[1] && dice[0] == dice[2] {
//    print(10000+dice[0]*1000)
//} else if (dice[0] == dice[1]) || (dice[0] == dice[2]) {
//    print(1000+dice[0]*100)
//} else if (dice[1] == dice[2]) {
//    print(1000+dice[1]*100)
//} else {
//    if let maxDice = dice.max() {
//        print(maxDice*100)
//    }
//}

// 3 3 6 -> 1300

// 2 2 2 -> 12000

// 6 2 5 -> 600
