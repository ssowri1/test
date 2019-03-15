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
    var fEndDevelopers:[Int] = [5, 5, 5]
    var bEndDevelopers:[Int] =  [5, 5, 5]
    override func viewDidLoad() {
        super.viewDidLoad()
        let result = CompanyEmployer.solution(&fEndDevelopers, &bEndDevelopers, F)
//        let result = NonConsecutiveLetters.solution(A: 7, B: 3)
        print(":-)) ", result)
    }
}
