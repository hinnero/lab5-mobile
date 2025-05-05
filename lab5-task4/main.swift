//
//  main.swift
//  Task4Console
//
//  Created by Олег Райцев on 2025-05-05.
//  Описание: анализ трёхзначного числа.
//

import Foundation

guard CommandLine.arguments.count == 2,
      let n = Int(CommandLine.arguments[1]),
      (100...999).contains(n) else {
    print("Usage: \(CommandLine.arguments[0]) <three-digit-number>")
    exit(1)
}

let digits = String(n).compactMap { $0.wholeNumberValue }
let sum = digits.reduce(0, +)
let product = digits.reduce(1, *)

print("Сумма цифр: \(sum) → двухзначная? \(sum >= 10 && sum <= 99)")
print("Произведение цифр: \(product) → трёхзначное? \(product >= 100 && product <= 999)")
