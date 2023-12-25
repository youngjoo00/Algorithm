// 덱 구현
public struct Deque<T> {
   private var array: [T?]
   private var head: Int
   private var capacity: Int
   private let originalCapacity:Int

   // 기본적으로 10개의 공간에 nil 을 갖는 배열 생성
   public init(_ capacity: Int = 10) {
       self.capacity = max(capacity, 1)
       originalCapacity = self.capacity
       array = [T?](repeating: nil, count: capacity)
       head = capacity
   }

   public var elements: [T?] {
       return array
   }

   public var headValue: Int {
       return head
   }

   public var isEmpty: Bool {
       return count == 0
   }

   public var count: Int {
       return array.count - head
   }

   public mutating func enqueueBack(_ element: T) {
       array.append(element)
   }

   // head가 0일 경우, capacity를 늘려서 배열의 앞부분에 빈 공간을 더 넣어줌
   public mutating func enqueueFront(element: T) {
       if head == 0 {
         capacity *= 2
         let emptySpace = [T?](repeating: nil, count: capacity)
         array.insert(contentsOf: emptySpace, at: 0)
         head = capacity
       }

       head -= 1
       array[head] = element
     }

   public mutating func dequeueFront() -> T? {
       guard head < array.count, let element = array[head] else { return nil }

       array[head] = nil
       head += 1

       // 잦은 dequeFront 로 배열의 앞부분이 과하게 커지는 경우 배열의 앞부분을 잘라내고 25% 정도 남김
       if capacity >= originalCapacity && head >= capacity*2 {
         let amountToRemove = capacity + capacity/2
         array.removeFirst(amountToRemove)
         head -= amountToRemove
         capacity /= 2
       }
       return element
     }

   public mutating func dequeueBack() -> T? {
       if isEmpty {
           return nil
       } else {
           return array.removeLast()
       }
   }

   public func peekFront() -> T? {
       if isEmpty {
           return nil
       } else {
           return array[head]
       }
   }

   public func peekBack() -> T? {
       if isEmpty {
           return nil
       } else {
           return array.last!
       }
   }
}