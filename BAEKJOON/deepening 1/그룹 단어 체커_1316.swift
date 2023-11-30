// 44. 그룹 단어 체커 (1316)
// 단어 N개를 입력으로 받아 그룹 단어의 개수를 출력하는 프로그램을 작성하시오.
// ccazzzzbb는 c, a, z, b가 모두 연속해서 나타나고, kin도 k, i, n이 연속해서 나타나기 때문에 그룹 단어이지만
// aabbbccb는 b가 떨어져서 나타나기 때문에 그룹 단어가 아니다.

// 해당 문자열이 본인과 다음이 다른가? && 이전에 나온 값중에 지금 비교하는 값과 같은게 있는가? true -> 1, fase -> 0

import Foundation

var input = Int(readLine()!)!

for _ in 0..<input {
   let word = readLine()!.map { $0 }
   var arr = [Character]() // 캐릭터 배열로 만들어야 캐릭터 타입과 비교할 수 있음
   for i in 0..<word.count-1 {
       if word[i] != word[i+1] && arr.contains(word[i+1]){
           input -= 1
           break;
       } else {
           arr.append(word[i])
       }
   }
}

print(input)

//3
//happy
//new
//year

//3

//4
//aba
//abab
//abcabc
//a

//1