/**
 - See: https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/swift
 */
func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    if h <= window {
        return -1
    }

    if bounce >= 1 || bounce <= 0 {
        return -1
    }

    let newHeight = h * bounce
    if newHeight >= window {
        return 2 + bouncingBall(newHeight, bounce, window)
    }

    return 1
}
