/**
 - See: https://www.codewars.com/kata/5772da22b89313a4d50012f7/train/swift
 */
func great(_ name: String, _ owner: String) -> String {
    switch name {
    case owner:
        return "Hello boss"
    default:
        return "Hello guest"
    }
}

// #againwhatlearned

// Use ternary operator:
// ```
// name == owner ? "Hello boss" : "Hello guest"
// ```
