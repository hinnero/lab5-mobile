import Foundation

func analyze(_ n: Int) {
    let digits = String(n).compactMap { $0.wholeNumberValue }
    let sum = digits.reduce(0, +)
    let product = digits.reduce(1, *)
    print("Число: \(n)")
    print("● Сумма: \(sum) → двухзначная? \(sum >= 10 && sum <= 99)")
    print("● Произведение: \(product) → трёхзначное? \(product >= 100 && product <= 999)")
}

analyze(374)
analyze(506)
