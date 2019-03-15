/*A company has employed N developers (numbered from 0 to N−1) and wants to divide them into two teams.
1). The first is a front-end team with F developers.
2). The second is a back-end team with N−F developers.
K). If the K-th developer is assigned to the front-end team then their contribution is A[K], and if they are assigned to the back-end team then their contribution is B[K].
*).What is the maximum sum of contributions the company can achieve?

Write a function:
public func solution(_ A : inout [Int], _ B : inout [Int], _ F : Int) -> Int
that, given two arrays A, B (consisting of N integers each) and the integer F, returns the maximum sum of contributions the company can achieve.

Examples:
1. Given A = [4, 2, 1], B = [2, 5, 3] and F = 2, the function should return 10. There should be two front-end developers and one back-end developer. The 0th and 2nd developers should be assigned to the front-end team (with contributions 4 and 1) and the 1st developer should be assigned to the back-end team (with contribution 5).
2. Given A = [7, 1, 4, 4], B = [5, 3, 4, 3] and F = 2, the function should return 18. The 0th and 3rd developers should be assigned to the front-end team and the 1st and 2nd developers should be assigned to the back-end team.
3. Given A = [5, 5, 5], B = [5, 5, 5] and F = 1, the function should return 15. The 0th developer can be assigned to the front-end team and the 1st and 2nd developers can be assigned to the back-end team.

Write an efficient algorithm for the following assumptions:
N is an integer within the range [1..200,000];
arrays A and B have equal lengths;
each element of array A is an integer within the range [0..1,000];
F is an integer within the range [0..N]. */

import UIKit

class CompanyEmployer: NSObject {
    // A - array of input
    // B - array of input
    // F - Int of input
    // It return the Int output
    class func solution(_ A : inout [Int], _ B : inout [Int], _ F : Int) -> Int {
        if A.count != B.count || A.count < 1 || A.count >= 200001 || A.count < F {
            return 0
        }
        if (A.filter({ $0 < 0 }).first != nil) || (A.filter({ $0 >= 1001 }).first != nil) {
            return 0
        }
        let indexes = Array(0...A.count-1)
        var output = 0
        let result = maxSumOfCompanyAchive(from: indexes, F, &A, &B, indexes, &output)
        return result
    }
    class func maxSumOfCompanyAchive(with developersF: [Int] = [], from array: [Int],_ length: Int, startingAt: Int = 0,_ fEnd: inout [Int],_ bEnd: inout [Int], _ indexes: [Int],_ result: inout Int) -> Int {
        if length == 0 {
            var frontEndK = [Int]()
            var backEndK = [Int]()
            var backEndDeveloperss = [Int]()
            let filtered = indexes.filter{ !developersF.contains($0) }
            for item in filtered {
                backEndDeveloperss.append(item)
            }
            for f in developersF {
                let frontEnd = fEnd[f]
                frontEndK.append(frontEnd)
            }
            for b in backEndDeveloperss {
                let backEnd = bEnd[b]
                backEndK.append(backEnd)
            }
            frontEndK += backEndK
            let kthContribution = frontEndK.reduce(0, +)
            kthContributions.append(kthContribution)
            result = kthContributions.max() ?? 0
            return 0
        }
        for i in startingAt ... array.count - length {
            var remaining = array
            remaining.remove(at: i)
            let _ = maxSumOfCompanyAchive(with: developersF + [array[i]], from: remaining, length - 1, startingAt: i, &fEnd, &bEnd, indexes, &result)
        }
        return result
    }
}
