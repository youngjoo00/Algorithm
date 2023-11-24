// 40. 별 찍기 - 7(2444)

let input = Int(readLine()!)!

for i in 1...input {
    print(String(repeating: " ", count: input-i) + String(repeating: "*", count: 2*i-1))
}

for j in 1..<input {
    print(String(repeating: " ", count: j) + String(repeating: "*", count: 2*(input-j)-1))
}

// string 끼리 + 를 이용하여 문자열을 합칠 수 있다..

//4 1    *
//3 3   ***
//2 5  *****
//1 7 *******
//0 9*********
//1 7 *******
//2 5  *****
//3 3   ***
//4 1    *
