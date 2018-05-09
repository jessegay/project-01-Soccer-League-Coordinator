// Create required collections (pleyers, experienced and inexperienced groups, teams, the league.)

let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "isExperienced": true, "guardians": "Jim and Jan Smith"]

let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "isExperienced": true, "guardians": "Clara Tanner"]

let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "isExperienced": true, "guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "isExperienced": false, "guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "isExperienced": false, "guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "isExperienced": false, "guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "isExperienced": false, "guardians": "Jeff Adams"]

let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "isExperienced": true, "guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "isExperienced": true, "guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "isExperienced": false, "guardians": "Gala Dali"]

let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "isExperienced": false, "guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "isExperienced": false, "guardians": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "isExperienced": true, "guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "isExperienced": false, "guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "isExperienced": false, "guardians": "Claire Willis"]

let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "isExperienced": true, "guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "isExperienced": true, "guardians": "Wynonna Brown"]

let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "isExperienced": true, "guardians": "Hyman and Rachel Krustofski"]



// Entire league
var theLeague: [[String: Any]] = []
theLeague += [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

theLeague.count

// Teams
var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

// Groups

var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []

// Divide   the   players   into   two   groups,   one   for   the   experienced   players,   another   one   for   the inexperienced

for player in theLeague {
    if player["isExperienced"] as? Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

experiencedPlayers.count

//for experiencedPlayer in experiencedPlayers {
//experiencedPlayers.sort {
//    $0.experiencedPlayer["height"] as? Double < $1.experiencedPlayer["height"] as? Double
//}

let experiencedSortedByHeight = experiencedPlayers.sorted { ($0["height"] as! Double) < ($1["height"] as! Double) }

print(experiencedSortedByHeight)


//for experiencedPlayer in experiencedPlayers{
//    let height = experiencedPlayer["height"] as? Double
//    experiencedPlayers.sort(by: height)
//    print("\(experiencedPlayer["height"] ?? 0)")
//}

experiencedPlayers[0]["height"] //ok,got the value out. Maybe a dead end.


//var numbArray = [1,3,5,2,7,3,8]
//numbArray.sort(by: <)
//print(numbArray)
////experiencedPlayers.sort(by: >)
//for experiencedPlayer in experiencedPlayers {
//    experiencedPlayers.sort(by:
//}

//  Afterwards   we   can   go   through   (iterate)   each   group   alternately   and   assign   players   to   the tree   teams

// find total (array.count). create counter. / total by 3. If dragonCount < total/3, assign player to teamDragons. If sharkCount < total * 2/3, assign to teamSharks, if raptorCount < total *2/3 && total, assign to teamRaptors. (might have to do this in reverse order). Wait, maybe easier to do with array indicies. https://developer.apple.com/documentation/swift/array


//var totalNumberOfPlayers = experiencedPlayers.count
//let firstGroup = experiencedPlayers[0..<totalNumberOfPlayers/3]
//print("\(firstGroup)")
//teamDragons += firstGroup
//
//let secondGroup = experiencedPlayers[totalNumberOfPlayers/3...totalNumberOfPlayers*2/3]
//teamSharks += secondGroup
//
//let thirdGroup = experiencedPlayers[totalNumberOfPlayers*2/3...(totalNumberOfPlayers-1)]
//teamRaptors += thirdGroup


// SORT BY AVERAGE HEIGHT.
    // Compute average height. Function or can I do it with just for in loop?
//func totalExperiencedHeight(height: Double) -> Double {
//    var totalHeight = 0.0
//    totalHeight += height
//    print(totalHeight)
//    return totalHeight
//
//}

//for player in experiencedPlayers {
//    let totalHeight = totalExperiencedHeight(height: (player["height"] as? Double)!)
//    print(totalHeight)
//}


//for player in experiencedPlayers {
//    var totalHeights = 0.0
//    let height = (player["height"] as? Double)
//
//    //var totalHeights? += 1.0 //(totalHeights + height)
//    print(height)
//}

//let averageExperiencedHeight = experiencedPlayers.height experiencedPlayers.count
//for experienceXHeight in experiencedPlayers {
//    if experienceXHeight["height"] as! Double >=
//}


//
//for player in experiencedPlayers {
//    var totalNumberOfPlayers = experiencedPlayers.count
//    if experiencedPlayers[0] {
//        teamSharks += [player]
//    } else {
//        print("blah")
//    }
//
//}

//var count = 0
//var dragonCount = 0
//var sharkCount = 0
//var raptorCount = 0
//if dragonCount

// EXPERIMENTS:

//for player in theLeague {
//    if let experience = player["experience"] {
//    let experienceCheck = experience
//        if experienceCheck as! Bool == true {
//            experiencedPlayers += [player]
//        } else {
//            inexperiencedPlayers += [player]
//        }
//    } else {
//    print("no experience here")
//    }
//}
//
//print("\(experiencedPlayers)")
// This works, but is kludgy. I guess I don't need to use optional chaining, and can use a simple loop, IF I downcast player["experience"] as a Bool for the comparison.

//for player in theLeague {
//    if let experience = player["experience"] {
//    experiencedPlayers += [player]} else {
//    print("no experience here")
//    }
//}
//print("\(experiencedPlayers)")
//


