// 42. 단어 공부 (1157)
// 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다.
// 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.

let arr = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
let input = readLine()!.uppercased().map { $0 }
var result = [Int]()
for i in arr {
   // 필터 함수를 이용하여 A...Z 까지 각 문자의 개수 값을 배열로 생성
   result.append(input.filter { $0 == i }.count)
}

// result 의 가장 큰 값이 여러개인지 체크한다. 2개 이상이라면 "?" 출력, 아니라면 max 값을 갖고있는 index 를 추출해서 arr[index] 로 가장 큰 문자를 찾아냄
print(result.filter { $0 == result.max()! }.count >= 2 ? "?" : arr[result.firstIndex(of: result.max()!)!] )

// 같은 수가 두개 이상 있느냐

// Mississipi

// ?

// zZa

// Z