// BOJ_1018_체스판 다시 칠하기.swift
//8×8 크기의 체스판으로 잘라낸 후에 몇 개의 정사각형을 다시 칠해야겠다고 생각했다. 당연히 8*8 크기는 아무데서나 골라도 된다.
//지민이가 다시 칠해야 하는 정사각형의 최소 개수를 구하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
var chessBoard : [[Character]] = []
var result : [Int] = []
for _ in 0..<input[0] {
    chessBoard.append(readLine()!.map { $0 })
}

for i in 0...input[1]-8 {
    for j in 0...input[0]-8 {
        var arr : [[Character]] = []
        var countB = 0
        var countW = 0
        
        // 1. 8*8 배열로 반복해서 자르기
        for k in 0..<8 {
            arr.append(Array(chessBoard[k+j][i..<i+8]))
        }
        
        // 2. 자른 배열의 각각을 좌상단이 B or W 로 시작하는 체스판 두가지의 경우 'arr[x][y] == "B" && x+y의 값이 홀수인지 짝수인지 비교'
        // 맞은 횟수를 count 배열에 각각 넣어둠
        for x in 0..<8 {
            for y in 0..<8 {
                if arr[x][y] == "B" && (x+y) % 2 == 0 {
                    countB += 1
                } else if arr[x][y] == "W" && (x+y) % 2 != 0 {
                    countB += 1
                }
            }
        }
        
        for x in 0..<8 {
            for y in 0..<8 {
                if arr[x][y] == "W" && (x+y) % 2 == 0 {
                    countW += 1
                } else if arr[x][y] == "B" && (x+y) % 2 != 0 {
                    countW += 1
                }
            }
        }
        
        // 3. count 배열 B, W 중에 가장 높은 값을 뽑아내서 result 배열에 추가
        result.append(max(countB, countW))
    }
}

// 4. 64 - result.max 를 통해 출력
print(64 - result.max()!)

//8 8
//WBWBWBWB
//BWBWBWBW
//WBWBWBWB
//BWBBBWBW
//WBWBWBWB
//BWBWBWBW
//WBWBWBWB
//BWBWBWBW