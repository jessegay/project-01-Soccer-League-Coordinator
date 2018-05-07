let playerOne: [String: Any] = ["Height": 42.0, "Soccer Experience": true, "Guardian Name(s)": "Jim and Jan Smith"]

for stats in playerOne {
    print("\(stats)")
}

 //remember, returned dict values are ALWAYS OPTIONALS.

if let airportName = playerOne["Height"] {
    print("Player one's height is \(airportName).")
} else {
    print("That player's height is not in the playerOne dictionary.")
}

//if let height = playerOne["Height"] {
//    let halfHeight = height as! Int/2
//    print("\(halfHeight)")
//} else {
//    print("That player's height is not in the playerOne dictionary.")
//}
//
//var myHeight = playerOne["Height"]
//myHeight as! Int/2



for (key, value) in playerOne {
    print("This is the key \(key), this is the value \(value)")
}
// can also iterate using a tuple with identifier names (instead of the generic key,value)
for (arbitraryName1, arbitraryName2) in playerOne {
    print("This is the key \(arbitraryName1), this is the value \(arbitraryName2)")
}

// Accessing ONLY keys or values:
for mmm in playerOne.keys {
    print("\(mmm)")
}




// SORTING
var numbers = [4,6,3,7,8,3,42,57]
print("First the numbers were unsorted \(numbers)")
numbers.sort()
print ("Now the numbers are sorted in place \(numbers)")

let sortedNumbers = numbers.sorted()
print("Here's how to return a sorted array \(sortedNumbers)")

var stringArray = ["f", "h", "e", "c", "m"]
stringArray.sorted()
