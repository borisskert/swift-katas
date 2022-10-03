/**
 - See: https://www.codewars.com/kata/568d0dd208ee69389d000016/train/swift
 */
func RentalCarCost(_ days: Int) -> Int {
    switch days {
    case (7...):
        return days * 40 - 50
    case (3...):
        return days * 40 - 20
    default:
        return days * 40
    }
}
