var arrayOfInts = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]



// Here's how to split an array into 3 groups. Inspried by:
// https://blog.donnywals.com/find-every-other-element-in-an-array-wit`h-swift/

for (index, number) in arrayOfInts.enumerated() {
    if ((index + 1) % 3) == 0 {
        print("\(number) is a multiple of 3")
    } else if ((index + 2) % 3) == 0{
        print("\(number) is in the next group")
    } else {
        print("\(number) is in the first group")
    }
    
}

//print(arrayOfInts.enumerated())


// Here are some other ways of getting at the index.
for item in arrayOfInts {
    if let index = arrayOfInts.index(of: item){
    print(index)
    //  print("\(arrayOfInts.index(of: item))")
    }
}







//for first in arrayOfInts {
//
//    if  arrayOfInts.index == 0 {
//        print(first)
//    } else {
//        print("nope")
//    }
//}
//


