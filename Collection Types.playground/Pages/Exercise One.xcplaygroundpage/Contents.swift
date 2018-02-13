/*:
 [Previous](@previous)
 
 # Exercise One
 
 1. Create an empty mutable array of type `Double` named `grades`:
 
 */

import Foundation

var grades : [Double] = []
/*:
 2. Now populate the array with eight random grades between 60 and 100.
 */
for _ in 1...8
{
    grades.append(Double (arc4random_uniform(40)+60))
}
print("\(grades.count)")
/*:
 3. Print a list of each array index and the associated value.
 */
for (index, value) in grades.enumerated() {
    print("At \(index) the value is \(value)")
}

/*:
 4. Determine and print the highest grade.
 */

var highestGrade : Double = 61

for grade in grades
{
    if grade > highestGrade
    {
        highestGrade = grade
    }
}

print("Your highest grade is \(highestGrade)")
//: [Next](@next)


