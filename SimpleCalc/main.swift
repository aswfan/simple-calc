//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/3/17.
//  Copyright © 2017 com.imyyfan. All rights reserved.
//

import Foundation

extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}

func add(a: Int, b: Int) -> (Bool, Int) {
    return (true, a + b)
}

func sub(a: Int, b: Int) -> (Bool, Int) {
    return (true, a - b)
}

func mul(a: Int, b: Int) -> (Bool, Int) {
    return (true, a * b)
}

func div(a: Int, b: Int) -> (Bool, Int) {
    if b == 0 {
        print("Illegal input: Int division or modulo by zero")
        return (false, 0)
    }
    return (true, a / b)
}

func mod(a: Int, b: Int) -> (Bool, Int) {
    if b == 0 {
        print("Illegal input: Int division or modulo by zero")
        return (false, 0)
    }
    return (true, a % b)
}

print("this is an simple calculator")
print("[Usage]: if you want to compute '15 + 27', you can do as following:")
print("15")
print("+")
print("27")
print("then the result 42 will be returned")

while true{
    print("Enter an expression separated by returns:")
    
    //initialize var
    var args = [String]()
    var result = 0
    var bool = true
    
    //read the inputs
    while let val = readLine(strippingNewline: true) {
        args.append(val.trim())
        if val == "count" || val == "avg" || val == "fact"{
            break
        }else if val == "+" || val == "-" || val == "*" || val == "/" || val == "%" {
            args.append(readLine(strippingNewline: true)!.trim())
            break
        }
    }
    
    var count = args.count
    
    if args[count-1] == "count" {
        result = count
    }else if args[count-1] == "avg" {
        for i in 0..<count-1 {
            result += Int(args[i])!
        }
        result /= count - 1
    }else if args[count-1] == "fact" {
        if count != 2 {
            print("Illegal input: factorial can only accept one number!")
        }
        result = 1
        for i in 1..<count-1 {
            result *= i
        }
    }else if count == 3 {
        //basic calc
        if args[1] == "-" {
            result = sub(a: Int(args[0])!, b: Int(args[2])!).1
        }else if args[1] == "+" {
            result = add(a: Int(args[0])!, b: Int(args[2])!).1
        }else if args[1] == "*" {
            result = mul(a: Int(args[0])!, b: Int(args[2])!).1
        }else if args[1] == "/" {
            (bool, result) = div(a: Int(args[0])!, b: Int(args[2])!)
            if bool {
                continue
            }
        }else if args[1] == "%" {
            (bool, result) = mod(a: Int(args[0])!, b: Int(args[2])!)
            if bool {
                continue
            }
        }else{
            print("Illegal input: please enter the correct expression!")
            continue
        }
    }else {
        print("Illegal input: please enter the correct expression!")
        continue
    }
    
    print("Result:" + String(result))
}




/*
 let a = readLine(strippingNewline: true)!.trim()
 let b = readLine(strippingNewline: true)!.trim()
 let c = readLine(strippingNewline: true)!.trim()
 
 if(b == "-"){
 result = Int(a)! - Int(c)!
 }else if(b == "+"){
 result = Int(a)! + Int(c)!
 }else if(b == "*"){
 result = Int(a)! * Int(c)!
 }else if(b == "/"){
 result = Int(a)! / Int(c)!
 }else if(b == "%"){
 result = Int(a)! % Int(c)!
 }else{
 print("Illegal input: please enter the correct expression!")
 continue
 }
 */
