//
//  AppDelegate.swift
//  testMath
//
//  Created by user on 08/03/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

//    class func printCombinations(with combinationThusFar: [Int] = [], from array: [Int], size: Int, startingAt: Int = 0) -> Int {
//        if size == 0 {
//            // FrontEnd contribution
//            var frontEndK = combinationThusFar
//            // get Ath value that is remaining
//            let filtered = A.filter{ !combinationThusFar.contains($0) }
//            // get index of Ath value that is remaining
//            let index = A.index(where: { $0 == filtered.first})
//            // Backend contribution
//            let backEndK = B[index!]
//            print("frontEndK ", frontEndK)
//            print("backEndK ", backEndK)
//            // append all k values into frontEndK
//            frontEndK.append(backEndK)
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
//            let _ = printCombinations(with: combinationThusFar + [array[i]], from: remaining, size: size - 1, startingAt: i)
//        }
//        return highestContribution
//    }

}

