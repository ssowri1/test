//
//  ViewController.swift
//  testMath
//
//  Created by user on 08/03/19.
//  Copyright © 2019 user. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        ///
        /// A company has employed N developers (numbered from 0 to N−1)....
//        companyEmployerSum()
        ///
        /// Arrange a & b character that not should be 3 consecutive letters...
        nonConsecutiveLetters()
    }
    private func companyEmployerSum() {
        let F = 2
        var fEndDevelopers:[Int] = [5, 5, 5]
        var bEndDevelopers:[Int] =  [5, 5, 5]
        let result = CompanyEmployer.solution(&fEndDevelopers, &bEndDevelopers, F)
        print(":-)) ", result)
    }
    private func nonConsecutiveLetters() {
        let result = NonConsecutiveLetters.solution(A: 5, B: 5)
        print(":-)) ", result)
    }
}
