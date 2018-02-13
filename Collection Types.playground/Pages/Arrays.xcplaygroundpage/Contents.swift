/*:
 [Previous](@previous)
 
 # Arrays
 
 - callout(Take Note): *Summarize* what is on this page in your purple notebook.
 
    You can refer to any handwritten notes you make in future portfolio development tasks.

 The syntax for declaring an array is straightforward and involves the use of *square brackets*.
 
 Run the code below.
 
 */

import Foundation

// Creates an array pre-populated with two values.
var shoppingList : [String] = ["Six Eggs", "Milk"]

/*:
 Make use of the sidebar in the playground to inspect the data structure's contents after each line:
 
 ![sidebar](sidebar.png "Use playground features to understand the data structure internals.")
 
 Notice that the indexes start at zero:
 
 ![array-indexes](array-indexes.png "Arrays are zero-based.")
 
 Arrays are *zero-based*.
 
 So the first value has an index of zero. The second value has an index of one. And so on.
 */

// Print the second value in the array
print("The second value in the array is: \(shoppingList[1])")

/*:
 A common programming error is trying to access an array index that does not exist.
 
 Uncomment the line below. What happens?
 */

//print("The third value in the array is: \(shoppingList[2])")

/*:
 If an array instance is a *variable*, it is *mutable*, and we can add items after the initial declaration of the array:
 */

// Add three more items to the list
shoppingList.append("Flour")
shoppingList.append("Baking Powder")
shoppingList.append("Bananas")

/*:
 We can determine how many items there are in an array quite easily:
 */

// How many values are there in total?
print("There are \(shoppingList.count) items in the list.")

/*:
 Finally, it is quite simple to sequentially access all the indexes and values in an array:
 */

// Print the index and values of an array
for (index, value) in shoppingList.enumerated() {
    print("At index \(index) the value is \(value)")
}

/*:
 If desired, we can just access the values of an array:
 */
for itemToBuy in shoppingList {
    print("Don't forget to purchase \(itemToBuy)")
}

//: [Next](@next)
