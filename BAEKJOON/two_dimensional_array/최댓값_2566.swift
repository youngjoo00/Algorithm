// 47. 최댓값 (2566)
// 9×9 격자판에 쓰여진 81개의 자연수 또는 0이 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 행 몇 열에 위치한 수인지 구하는 프로그램을 작성하시오.

// 풀이 1. 2차원 배열을 사용한 짧은 답이지만, 백준은 문자로 인식해서 안됨

// var arr = [[Int]]()
// var max = 0
// var result : String = ""

// for _ in 0..<9 {
//    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
// }

// for i in 0..<9 {
//    if arr[i].max()! > max {
//        max = arr[i].max()!
//        result = "\(i+1) \(arr[i].firstIndex(of: arr[i].max()!)!+1)"
//    }
// }

// print("\(max)\n\(result)")

// 풀이 2. 이게 정답으로 인식 됨

var arr = [[Int]]()
var max = [Int]()
var result = [Int]()
for _ in 0..<9 {
   arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<9 {
   max.append(arr[i].max()!)
}

print(max.max()!)

for i in 0..<9 {
   if arr[i].max()! == max.max()! {
       print("\(i+1) \(arr[i].firstIndex(of: max.max()!)!+1)")
   }
}