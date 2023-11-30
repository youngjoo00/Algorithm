// 43. 크로아티아 알파벳 (2941)

import Foundation

let arr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var input = readLine()!

for i in arr {
   // input 문자열에 arr 의 각 요소 i 에 해당하는 문자가 있다면 "1" 로 변경해서 input 에 넣어줌
   input = input.replacingOccurrences(of: i, with: "1")
}

print(input.count)

// replacingOccurrences(of: <#T##String#>, with: <#T##String#>)
// 이 함수는 (of:특정 단어)를 (with:원하는 단어)로 변경해주는 함수이다.
// Foundation 을 임포트 해야 사용가능하다.

// ljes=njak
// 6