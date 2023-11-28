// 55. 분수찾기_1193.swift

var x = Int(readLine()!)!
var count = 0
var n = 0
for i in 1...x {
    // 등차수열을 이용
    n += i
    count += 1
    // n >= x 일 경우 x - (n-count) 를 통해 n 에 해당하는 행의 몇번째 값을 찾아야하는지 넣어주었다.
    if n >= x {
        n = x - (n - count)
        break
    }
}

// n, count 를 이용하여 찾으려는 행의 n번째 값을 찾아낼 수 있다.
if count % 2 != 0 {
    print("\(count-n+1)/\(n)")
} else {
    print("\(n)/\(count-n+1)")
}

//1 1/1
//
//2 1/2
//
//3 2/1
//
//4 3/1
//
//5 2/2
//
//6 1/3
//
//7 1/4
//
//8 2/3
//
//9 3/2
//
//14 2/4
