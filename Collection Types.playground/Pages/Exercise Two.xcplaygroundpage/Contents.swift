/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation


var restaurantRatings : [Double] = []
/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20
{
    restaurantRatings.append(Double (arc4random_uniform(100)))
}
print("\(restaurantRatings)")
/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var addedRatings : Double = 0
for ratings in restaurantRatings
{
    addedRatings += ratings
}
addedRatings/Double(restaurantRatings.count)

/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var unsatisfiedDiners = 0
for ratings in restaurantRatings
{
    if ratings < 80
    {
        unsatisfiedDiners += 1
    }
}
var percentage = Double(addedRatings)/Double(restaurantRatings.count)
/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var veryBad = 0
var bad = 0
var fair = 0
var satisfactory = 0
var stellar = 0

for ratings in restaurantRatings
{
    if ratings < 26
    {
        veryBad += 1
    }
    else if ratings < 50
    {
        bad += 1
    }
    else if ratings < 80
    {
        fair += 1
    }
    else if ratings < 90
    {
        satisfactory += 1
    }
    else
    {
        stellar += 1
    }
}


print("\(stellar) stellar reviews. \(satisfactory) satisfactory reviews. \(fair) fair reviews. \(bad) bad reviews. \(veryBad) very bad reviews.")
print("\(Double(stellar)/Double(restaurantRatings.count)*100)% of people rated the restaurant to be stellar.")
print("\(Double(veryBad)/Double(restaurantRatings.count)*100)% of people rated the restaurant to be very bad.")

