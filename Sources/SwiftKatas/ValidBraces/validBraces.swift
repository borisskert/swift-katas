/**
 https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/swift
 */
func validBraces(_ string: String) -> Bool {
    Braces.empty.isValid(string)
}

private class Braces {
    let braces: Stack<Character>

    private init(_ braces: Stack<Character>) {
        self.braces = braces
    }

    func isValid(_ text: String) -> Bool {
        if text.isEmpty {
            return braces.isEmpty
        }

        func reduce() -> Bool {
            Braces(braces.pop()).isValid(text.tail())
        }

        func shift() -> Bool {
            Braces(braces.push(text.first!)).isValid(text.tail())
        }

        func skip() -> Bool {
            isValid(String(text.dropFirst()))
        }

        switch (braces.top, text.first!) {
        case ("(", ")"): return reduce()
        case ("[", "]"): return reduce()
        case ("{", "}"): return reduce()
        case (_, ")"): return false
        case (_, "]"): return false
        case (_, "}"): return false
        case (_, "("): return shift()
        case (_, "["): return shift()
        case (_, "{"): return shift()
        default: return skip()
        }
    }

    static var empty: Braces {
        get {
            Braces(Stack.empty)
        }
    }
}

private extension String {
    func tail() -> String {
        String(dropFirst())
    }
}

/**
 a simple immutable Stack
 */
private class Stack<T> {
    private let items: [T]

    private init(_ items: [T]) {
        self.items = items
    }

    func push(_ item: T) -> Stack<T> {
        Stack(items + [item])
    }

    var isEmpty: Bool {
        get {
            items.isEmpty
        }
    }

    func pop() -> Stack<T> {
        Stack(items.dropLast(1))
    }

    var top: T? {
        get {
            items.last
        }
    }

    static var empty: Stack<T> {
        get {
            Stack([])
        }
    }
}
