// 45. 너의 평점은 (25206)
// 전공평점은 전공과목별 (학점 × 과목평점)의 합을 학점의 총합
// P/F 과목의 경우 등급이 P또는 F로 표시되는데, 등급이 P인 과목은 계산에서 제외해야 한다.

// 학점 계산기 만들기

let grade = ["A+", "A0", "B+", "B0", "C+", "C0", "D+", "D0", "F", "P"]
let decemalGrade = [4.5, 4.0, 3.5, 3.0, 2.5, 2.0, 1.5, 1.0, 0.0]
var result = 0.0
var gradeAdd = 0.0
for _ in 0..<20 {
   let input = readLine()!.split(separator: " ").map { String($0) }
   if !(input[2] == "P") {
       result = result + Double(input[1])! * decemalGrade[grade.firstIndex(of: input[2])!]
       gradeAdd = gradeAdd + Double(input[1])!
   }
}

print(result/gradeAdd)