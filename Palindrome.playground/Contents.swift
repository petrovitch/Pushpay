//: Playground - noun: a place where people can play

import UIKit

//Make the following test cases pass.
extension String {
    var lettersOnly: String {
        return components(separatedBy: NSCharacterSet.letters.inverted).joined(separator: "")
    }
    
    var isPalindrome: Bool {
        return String(characters.reversed()).lettersOnly.lowercased() == lettersOnly.lowercased()
    }
}

func isPalindrome(s:String)->Bool{
    return s.isPalindrome //todo
}

func check(s:String, shouldBePalindrome:Bool){
    print(isPalindrome(s: s) == shouldBePalindrome ? "pass" : "FAIL")
}

check(s: "abcba", shouldBePalindrome: true);

check(s: "abcde", shouldBePalindrome: false);

check(s: "Mr owl ate my metal worm", shouldBePalindrome: true);

check(s: "Never Odd Or Even", shouldBePalindrome: true);

check(s: "Never Even Or Odd", shouldBePalindrome: false);
        