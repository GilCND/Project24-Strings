//
//  ViewController.swift
//  Project24-Strings
//
//  Created by Felipe Gil on 2021-09-23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var number = ["aaaa", "1234", "asd"]
        var test = "tes"
        var test2 = "testa"
        for element in number {
            print (element.hasNumber())
        }
        number[0].addPrefix(prefix: "test")
        print (number[0])
        test.addPrefix(prefix: "test")
        print (test)
        test2.addPrefix(prefix: "test")
        print (test2)
    }



}
extension String {
    
    mutating func addPrefix(prefix: String) {
        if self.contains(prefix){
            print("It contains the prefix")
        }
        else{
            self = prefix + self
        }
    }

    func hasNumber() -> Bool {
        var isNumber: Bool {
            return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
        return isNumber
    }
   
}
