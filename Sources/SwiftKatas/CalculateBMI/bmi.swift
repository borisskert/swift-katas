/**
 https://www.codewars.com/kata/57a429e253ba3381850000fb/train/swift
 */
func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / (height * height)

    if bmi <= 18.5 {
        return "Underweight"
    }

    if bmi <= 25 {
        return "Normal"
    }

    if bmi <= 30 {
        return "Overweight"
    }

    return "Obese"
}

// #againwhatlearned

// Use switch statement this way:
// ```
//    switch bmi {
//    case ...18.5: return "Underweight"
//    case ...25.0: return "Normal"
//    case ...30.0: return "Overweight"
//    default: return "Obese"
//    }
// ```
