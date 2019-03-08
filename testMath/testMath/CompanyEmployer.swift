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
    class public func solution(_ A: inout [Int], _ B: inout [Int], _ F: Int) -> Int {
        var value: [Int] = [0]
        var key: Int = 0
        var frontEndDict = [Int: [Int]]()
        var backEndDict = [Int: [Int]]()
        var frontSumDict = [Int: [Int]]()
        var backSumDict = [Int: [Int]]()
        /// contribuion of B = N - F
        let backendContribution = A.count - F
        ///
        /// For front end
        ///
        for i in 0..<A.count {
            let initialValue = A[i]
            for j in i+1..<A.count {
                value = [initialValue, A[j]]
                debugPrint("key ==>> ", key)
                debugPrint("value ==>> ", value)

                frontEndDict.updateValue(value, forKey: key)
                value = [initialValue, A[j]]
                frontSumDict.updateValue(value, forKey: key)
                key += 1
                let filteredIndices = A.indices.filter {A[$0] == A[j]}
//                debugPrint("FfilteredIndices==>> ", filteredIndices)
            }
        }
//        debugPrint("F ==>> ", frontEndDict)
//        debugPrint("frontSumDict ==>> ", frontSumDict)
        value = [0]
        key = 0
        ///
        /// For back end
        ///
        for i in 0..<B.count {
            let initialValue = B[i]
            for j in i+1..<B.count {
                value = [initialValue, B[j]]
                backEndDict.updateValue(value, forKey: key)
                value = [initialValue + B[j]]
                backSumDict.updateValue(value, forKey: key)
                key += 1

            }
        }
        debugPrint("B ==>> ", backEndDict)
        debugPrint("backSumDict ==>> ", backSumDict)
        
        for k in 0..<A.count {
            debugPrint("k ==>> ", A[k])

            for L in k+1..<B.count {
                debugPrint("L ==>> ", B[L])

            }
            
            
            
//            if k > F-1 {
////                print("BBB ==>> ", B[k])
//            } else {
////                print("AAA ==>> ", A[k])
//            }
        }

        
        
        return 777
        
        
        
    }

}

extension Array where Element: Equatable {
    
    func whatFunction(_ value :  Element) -> [Int] {
        return self.indices.filter {self[$0] == value}
    }
    
}


