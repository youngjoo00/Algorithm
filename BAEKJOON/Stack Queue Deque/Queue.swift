// 큐 구현
public struct Queue<T> {
   fileprivate var array = [T?]()
   fileprivate var head = 0

   public var isEmpty: Bool {
       return count == 0
   }

   public var count: Int {
       return array.count - head
   }

   public mutating func enqueue(_ element: T) -> T? {
       array.append(element)
       return element
   }

   public mutating func dequeue() -> T? {
       guard head < array.count, let element = array[head] else { return nil }

       array[head] = nil
       head += 1

       let percentage = Double(head) / Double(array.count)
       // 일정 비율이 넘어가면 배열의 크기를 줄이고 헤드까지 날림
       if array.count > 50 && percentage > 0.25 {
           // removeFirst(_:)는 배열의 앞에서부터 지정된 개수만큼의 요소를 제거하는 메서드
           array.removeFirst(head)
           head = 0
       }

       return element
   }

   public var front: T? {
       if isEmpty {
           return nil
       } else {
           return array[head]
       }
   }

   public var back: T? {
       if isEmpty {
           return nil
       } else {
           return array.last!
       }
   }
}