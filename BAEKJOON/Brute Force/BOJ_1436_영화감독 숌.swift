// BOJ_1436_영화감독 숌.swift
//숌이 만든 N번째 영화의 제목에 들어간 수를 출력하는 프로그램을 작성하시오.

var N = Int(readLine()!)!

// 666을 시작으로 이게 1번째 영화
var movieNumber = 666

// N번째 영화를 찾기 위해서는 666이 들어가는 수가 나올때 마다 N 을 하나씩 줄여주고 0이 되면 출력하면 됨
while N != 0 {
    var divideNumber = movieNumber
    
    // 666을 판별하는 방법은 영화 제목은 하늘이 무너져도 666이 반드시 붙어있다.
    // 그렇다면, 666 다음은 반드시 1000 이상의 값이니까 num % 1000 을 했을때 666 값이 나온다면 판별 가능하다.
    while divideNumber >= 666 {
        if divideNumber % 1000 == 666 {
            N -= 1
            break
        } else {
            // 6660 같은 경우는 뒤에 있는 숫자를 10으로 나눠서 잘라버리면 된다.
            divideNumber /= 10
        }
    }
    movieNumber += 1
}

print(movieNumber-1)


//2
//1666

//7
//6660