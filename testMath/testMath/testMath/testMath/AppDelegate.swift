/* This question already has an answer here:
 * Apple Swift - Generate combinations with repetition 4 answers
 Input:
 let arrayX = [7, 8, 9]
 let filter = 2
 
 var output = ?
 I want to arrange the possible Integer array of array ( [[Int]] ) from my integer array ( [Int] ). For example, Lets move with above arrayX,
 Probability 1 = [7, 8]
 Probability 2 = [7, 9]
 Probability 3 = [8, 9]
 
 output = [ [7, 8], [7, 9], [8, 9] ]
 Therefore, I can separate maximum 3 array of array here. Then filter & array length must be dynamic. Some more examples:
 //(Ex 1):
 let arrayX = [8, 1, 8, 9]
 let count = 2
 output = [ [8, 1], [8, 8], [8, 9] , [1, 8], [1, 9], [8, 9] ]
 
 //(Ex 2):
 let arrayX = [8, 1, 8, 9]
 let count = 3
 output = [ [8, 1, 8], [8, 1, 9], [8, 8, 9] , [1, 8, 9]]
 So how can I separate the array, if the arrayX contain N numbers with unknown number of filter? It would be grateful if you share your suggestions to write a efficient code for this scenario. */
//  link https://stackoverflow.com/questions/25162500/apple-swift-generate-combinations-with-repetition/25879655#25879655
//  link https://stackoverflow.com/questions/47798045/combinations-of-items-in-array-with-multithreading-using-swift/47799808#47799808
//    link https://stackoverflow.com/questions/25162500/apple-swift-generate-combinations-with-repetition

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

