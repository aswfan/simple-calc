## This is the 1st assignment for INFO 449: Mobile Development: IOS (Spring, 2017)

Date: Apr. 4, 2017

Project Name: SimpleCalc

Repository Name: simple-calc

Submission URL: 

https://github.com/&lt; your-github-username>/simple-calc

Description:

- Write a console "calculator" program

user can enter a number, hit return
user can enter an operation (add, sub, mul, div, mod), then return
user can enter a number, hit return
program calculates the result

- Example usage

```
$ calc
 Enter an expression separated by returns:
 15
 +
 27
 Result: 42
Enter an expression separated by returns:
15
 -
 27
Result: -12
```

- Add a few new (multi-operand) operations in

1. "count": count the number of input
  
`10 4 25 17 5 count => 5`

2. "avg": average all the inputs
  
`2 4 6 8 10 avg => 6`

any of these two can take any number of inputs

3. "fact": calculate factorial

__fact can only accept one number__

`5 fact => 120`

- Use readLine for standard input reading

`let response = readLine(stripNewline: true)!`

- Error handling is up to you
