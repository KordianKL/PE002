//
//  main.swift
//  PE002
//
//  Created by Kordian Ledzion on 10.04.2017.
//  Copyright © 2017 KordianLedzion. All rights reserved.
//

import Foundation

var sum = 0
var fibs = [Int]()

fileprivate func generateFibUpTo(ceil: Int, first: Int, second: Int, into: inout [Int]) -> Int{
    if(second + first < ceil){
        into.append(generateFibUpTo(ceil: ceil, first: second, second: (second + first), into: &into))
    }
    return (second + first)
}

generateFibUpTo(ceil: 4000000, first: 0, second: 1, into: &fibs)

fibs.removeFirst()

for fib in fibs{
    if fib % 2 == 0 {
        sum += fib
    }
}

print(sum)
