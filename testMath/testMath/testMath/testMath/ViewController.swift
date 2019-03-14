//
//  ViewController.swift
//  testMath
//
//  Created by user on 08/03/19.
//  Copyright © 2019 user. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    let F = 2
    var frontEndDevelopers = [7, 1, 4, 4, 7, 5, 6, 9]
    var backEndDevelopers = [5, 3, 4, 3, 2, 7, 8, 9]
    var arrayIndexes:[Int] = [0]
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate()
    }
    func calculate() {
        arrayIndexes = Array(0...frontEndDevelopers.count-1)
        let result = maxSumOfCompanyAchive(from: arrayIndexes, size: F)
        print(":-))) ", result)
    }
    ///
    /// Find maximum sum of company achive value from two equal length of arrays.
    ///
    func maxSumOfCompanyAchive(with combinationThusFar: [Int] = [], from array: [Int], size: Int, startingAt: Int = 0) -> Int {
        if size == 0 {
            // FrontEnd contribution
            var frontEndK = [Int]()
            var backEndK = [Int]()
            var backEndDeveloperss = [Int]()
            print("combinationThusFar ", combinationThusFar)
            // get Ath value that is remaining
            let filtered = arrayIndexes.filter{ !combinationThusFar.contains($0) }
            print("filtered ", filtered)
            // get index of Ath value that is remaining
            for item in filtered {
                backEndDeveloperss.append(item)
            }
            // append all k values into frontEndK
            for f in combinationThusFar {
                let frontEnd = frontEndDevelopers[f]
                frontEndK.append(frontEnd)
            }
            // Backend contribution
            for b in backEndDeveloperss {
                let backEnd = backEndDevelopers[b]
                backEndK.append(backEnd)
            }
            frontEndK += backEndK
            print("kthContribution ==>> ", frontEndK)
            // sum of every posible contribution
            let kthContribution = frontEndK.reduce(0, +)
            kthContributions.append(kthContribution)
            highestContribution = kthContributions.max() ?? 0
            print("Max contribution by Company ==>> ", kthContribution, "\n")
            return 0
        }
        for i in startingAt ... array.count - size {
            var remaining = array
            remaining.remove(at: i)
            let _ = maxSumOfCompanyAchive(with: combinationThusFar + [array[i]], from: remaining, size: size - 1, startingAt: i)
        }
        return highestContribution
    }
}
