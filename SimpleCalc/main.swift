//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/3/17.
//  Copyright © 2017 com.imyyfan. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")
print("for example, if you want to compute '15 + 27', you can do as following:")
print("15")
print("+")
print("27")
print("then the result 42 will be returned")

//read the inputs
let a = readLine(strippingNewline: true)!
let b = readLine(strippingNewline: true)!
let c = readLine(strippingNewline: true)!

var result = 0

if(b == "-"){
    result = Int(a)! - Int(b)!
}else if(b == "+"){
    result = Int(a)
}else if(b == "*"){
    result = Int(a)! * Int(b)!
}else if(b == "/"){
    result = Int(a)! / Int(b)!
}else if(b == "%"){
    result = Int(a)! % Int(b)!
}else{
    print("Illegal input, please enter the correct expression!")
    RETURN
}

print("Result:" + String(result))
