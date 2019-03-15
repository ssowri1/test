//
//  RecursiveFunction.swift
//  testMath
//
//  Created by user on 14/03/19.
//  Copyright © 2019 user. All rights reserved.




var arrayCount = [0, 1, 2]
var sampleA = [5,5,5]
var sampleB = [5,5,5]

var kthContributions:[Int] = [0]
var highestContribution = 0

import UIKit
class RecursiveFunction: NSObject {
    ///
    /// Find maximum sum of company achive value from two equal length of arrays.
    ///
//    class func maxSumOfCompanyAchive(with combinationThusFar: [Int] = [], from array: [Int], size: Int, startingAt: Int = 0) -> Int {
//        if size == 0 {
//            // FrontEnd contribution
//            var frontEndK = [Int]()
//            var backEndK = [Int]()
//            var backEndDevelopers = [Int]()
//            print("combinationThusFar ", combinationThusFar)
//            // get Ath value that is remaining
//            let filtered = arrayCount.filter{ !combinationThusFar.contains($0) }
//            print("filtered ", filtered)
//            // get index of Ath value that is remaining
//            for item in filtered {
//                backEndDevelopers.append(item)
//            }
//            // append all k values into frontEndK
//            for f in combinationThusFar {
//                let frontEnd = sampleA[f]
//                frontEndK.append(frontEnd)
//            }
//            // Backend contribution
//            for b in backEndDevelopers {
//                let backEnd = sampleB[b]
//                backEndK.append(backEnd)
//            }
//            frontEndK += backEndK
//            print("kthContribution ==>> ", frontEndK)
//            // sum of every posible contribution
//            let kthContribution = frontEndK.reduce(0, +)
//            kthContributions.append(kthContribution)
//            highestContribution = kthContributions.max() ?? 0
//            print("Max contribution by Company ==>> ", kthContribution, "\n")
//            return 0
//        }
//        for i in startingAt ... array.count - size {
//            var remaining = array
//            remaining.remove(at: i)
//            let _ = maxSumOfCompanyAchive(with: combinationThusFar + [array[i]], from: remaining, size: size - 1, startingAt: i)
//        }
//        return highestContribution
//    }
    
}
