//
//  NonConsecutiveLetters.swift
//  testMath
//
//  Created by user on 15/03/19.
//  Copyright © 2019 user. All rights reserved.
//
import UIKit

class NonConsecutiveLetters: NSObject {
    class func solution(A: Int, B: Int) -> String {
        var input = ["a", "a", "a", "a", "a", "a", "a"]
        var output = ""
        var greaterCharecter: Character = "a", smallerchrecter: Character = "b"
        var greaterCount: Int = A, smallerCount: Int = B
        if A < B {
            greaterCharecter = "b"
            greaterCount = B
            smallerchrecter = "a"
            smallerCount = A
        }
        let consecutiveGreater = "\(greaterCharecter)"+"\(greaterCharecter)"
        let consecutivesmaller = "\(smallerchrecter)"+"\(smallerchrecter)"
        let greaterEnd = "\(smallerchrecter)"+"\(greaterCharecter)"
        let smallerEnd = "\(smallerchrecter)"+"\(greaterCharecter)"
        //        for _ in 0..<A {
        //            print("Output ", output)
        //            print("consecutiveGreater ", consecutiveGreater,"\n")
        //            if output.suffix(2) == consecutiveGreater {
        //                output.append(smallerchrecter)
        //            } else if output.suffix(2) == consecutiveLesser {
        //                output.append(greaterCharecter)
        //            } else if output.suffix(2) == greaterEnd {
        //                output.append(smallerchrecter)
        //            } else if output.suffix(2) == lesserEnd {
        //                output.append(greaterCharecter)
        //            } else {
        //                output.append(greaterCharecter)
        //            }
        //        }
        //        "BBaBa"
        let totalCount = A+B
        let expectedCount = greaterCount/smallerCount-1
        print("diff ", greaterCount - smallerCount)
        print("expectedCount ", expectedCount)
        print("smallerchrecter ", smallerchrecter)
        print("greaterCharecter ", greaterCharecter)
        print("consecutiveGreater ", consecutiveGreater)
        
        if greaterCount == smallerCount {
            
            for _ in 0..<totalCount {

                if output.suffix(2) == consecutiveGreater {
                    output.insert(smallerchrecter, at: output.endIndex)
                } else {
                    if output.suffix(2) == consecutivesmaller {
                        output.insert(smallerchrecter, at: output.index(output.endIndex, offsetBy: -3))
                    } else if output.countInstances(of: "\(greaterCharecter)") >= greaterCount {
                        output.insert(smallerchrecter, at: output.index(output.endIndex, offsetBy: 0))
                    } else {
                        output.insert(greaterCharecter, at: output.endIndex)
                    }
                }
                print("output ", output)
            }
            return output
            
        } else {
            for _ in 0..<totalCount {
                if output.suffix(2) == consecutivesmaller {
                    output.insert(smallerchrecter, at: output.index(output.endIndex, offsetBy: -3))
                } else if output.suffix(2) == consecutiveGreater {
                    output.insert(smallerchrecter, at: output.endIndex)
                } else {
                    if output.countInstances(of: "\(greaterCharecter)") >= greaterCount {
                        output.insert(smallerchrecter, at: output.endIndex)
                    } else {
                        output.insert(greaterCharecter, at: output.endIndex)
                    }
                }
                print("output ", output)
            }
            return output
        }
    }
}

extension String {
    func countInstances(of stringToFind: String) -> Int {
        var stringToSearch = self
        var count = 0
        while let foundRange = stringToSearch.range(of: stringToFind, options: .diacriticInsensitive) {
            stringToSearch = stringToSearch.replacingCharacters(in: foundRange, with: "")
            count += 1
        }
        return count
    }
}

//"a a b a a b a a b a a b a a"
