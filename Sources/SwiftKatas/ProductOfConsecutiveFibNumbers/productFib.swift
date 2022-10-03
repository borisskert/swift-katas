/**
 - See: https://www.codewars.com/kata/5541f58a944b85ce6d00006a/train/swift
 */
func productFib(_ prod: UInt64) -> (UInt64, UInt64, Bool) {
    let numbers = Fibonacci().prefix(while: { $0 <= prod })

    let (a, b) = numbers
            .zipWithNext()
            .map {
                ($0, $1)
            }
            .first(where: { $0 * $1 >= prod })!

    return (a, b, a * b == prod)
}


private extension Collection where Element: Equatable {
    func zipWithNext() -> Zip2Sequence<Self, Self.SubSequence> {
        zip(self, dropFirst())
    }
}

private struct Fibonacci: Sequence {
    typealias Element = UInt64
    typealias Iterator = FibonacciIterator

    func makeIterator() -> FibonacciIterator {
        FibonacciIterator()
    }
}

private struct FibonacciIterator: IteratorProtocol {
    typealias Element = UInt64

    var a: UInt64 = 0
    var b: UInt64 = 1

    mutating func next() -> Element? {
        let c = a + b
        a = b
        b = c

        return c
    }
}
