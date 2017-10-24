//
//  main.m
//  palindrome
//
//  Created by Tomas Radvansky on 07/11/2016.
//  Copyright © 2016 Tomas Radvansky. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString* reverseString(NSString* input)
{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [input length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[input substringWithRange:subStrRange]];
    }
    return reversedString;
}

bool isPalindrome(NSString* s)
{
    NSString* letters = [[s componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
    if (letters.lowercaseString == reverseString(s))
    {
        return true;
    }
    else
    {
        return false;
    }
}

void checkString(NSString* inputString, bool shouldBePalindrome)
{
    NSLog(isPalindrome(inputString) == shouldBePalindrome ? @"pass" : @"FAIL");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        checkString(@"abcba", true);
        checkString(@"abcde", false);
        checkString(@"Mr owl ate my metal worm", true);
        checkString(@"Never Odd Or Even", true);
        checkString(@"Never Even Or Odd", false);
    }
    return 0;
}

