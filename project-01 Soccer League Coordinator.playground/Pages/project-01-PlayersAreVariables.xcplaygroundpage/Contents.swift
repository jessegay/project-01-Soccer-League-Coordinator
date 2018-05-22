// Create required collections (pleyers, experienced and inexperienced groups, teams, the league.)

var player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "isExperienced": true, "guardians": "Jim and Jan Smith"]

var player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "isExperienced": true, "guardians": "Clara Tanner"]

var player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "isExperienced": true, "guardians": "Sara and Jenny Bon"]

var player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "isExperienced": false, "guardians": "Wendy and Mike Gordon"]

var player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "isExperienced": false, "guardians": "Charles and Sylvia Gill"]

var player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "isExperienced": false, "guardians": "Bill and Hillary Stein"]

var player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "isExperienced": false, "guardians": "Jeff Adams"]

var player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "isExperienced": true, "guardians": "Heather Bledsoe"]

var player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "isExperienced": true, "guardians": "Henrietta Dumas"]

var player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "isExperienced": false, "guardians": "Gala Dali"]

var player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "isExperienced": false, "guardians": "Sam and Elaine Kavalier"]

var player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "isExperienced": false, "guardians": "Aaron and Jill Finkelstein"]

var player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "isExperienced": true, "guardians": "Robin and Sarika Soto"]

var player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "isExperienced": false, "guardians": "David and Jamie Alaska"]

var player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "isExperienced": false, "guardians": "Claire Willis"]

var player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "isExperienced": true, "guardians": "Thomas Helm and Eva Jones"]

var player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "isExperienced": true, "guardians": "Wynonna Brown"]

var player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "isExperienced": true, "guardians": "Hyman and Rachel Krustofski"]



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

// Checking to see if the split is accurate.
experiencedPlayers.count
inexperiencedPlayers.count

// Sort experienced and inexperienced by height before we distribute onto teams. Descending order for experiencedPlayers and Ascending for inexperiencedPlayers so when we split into teams the heights average out.(need to improve this explanation)

let experiencedSortedByHeight = experiencedPlayers.sorted { ($0["height"] as! Double) > ($1["height"] as! Double) }

// Checking results
print(experiencedSortedByHeight)

let inexperiencedSortedByHeight = inexperiencedPlayers.sorted { ($0["height"] as! Double) < ($1["height"] as! Double) }

// Checking results
print(inexperiencedSortedByHeight)

// Now that I've sorted by experience AND height, I need to "deal" the players into the 3 teams. If I distribute the experiencedPlayers in descending order and inxperiencedPlayers in ascending order, the average heights should be within 1.5" of each other.

for (index, player) in experiencedSortedByHeight.enumerated() {
    if ((index + 1) % 3) == 0 {
        teamDragons.append(player)
    } else if ((index + 2) % 3) == 0{
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}


for (index, player) in inexperiencedSortedByHeight.enumerated() {
    if ((index + 1) % 3) == 0 {
        teamDragons.append(player)
    } else if ((index + 2) % 3) == 0{
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}



// Calculate average height and PRINT TO CONSOLE. For each team add the heights of all players and divide by teamName.count. Need to make count a Double since Swift won't let me divide Double by Int.
var heightTotalSharks = 0.0
for player in teamSharks {
    let height = player["height"]
    heightTotalSharks += (height as? Double)!
}
let numberOfSharks: Double = Double(teamSharks.count) // : Double is syntactic sugar for clarity. Could delete.
print("teamSharks' average height is \(heightTotalSharks/numberOfSharks)")

var heightTotalDragons = 0.0
for player in teamDragons {
    let height = player["height"]
    heightTotalDragons += (height as? Double)!
}
let numberOfDragons: Double = Double(teamDragons.count)
print("teamDragons' average height is \(heightTotalDragons/numberOfDragons)")


var heightTotalRaptors = 0.0
for player in teamDragons {
    let height = player["height"]
    heightTotalRaptors += (height as? Double)!
}
let numberOfRaptors: Double = Double(teamRaptors.count)
print("teamRaptors' average height is \(heightTotalRaptors/numberOfRaptors)")



//    ** Part 3: ** Write code that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:
//
//Dragons - March 17, 1pm
//Sharks - March 17, 3pm
//Raptors - March 18, 1pm
//When your complete code is run in a playground the letters should be stored in a collection named 'letters'. When the code is run, the letters should be visible in the console.
//



// Create empty array of strings so I have a place to put the letters.
//var letters = [String]()
//
//
//for player in teamSharks {
//    if let guardians = player["guardians"], let name = player["name"] {
//    let myLetter: String = "Hello \(guardians). \(name) has been drafted onto the famous Sharks! The first practice is March 17 at 3pm."
//    letters.append(myLetter)
//    }
//}
//



// Print Letters (and make sure they are not enclosed in []
//for letter in letters {
//    print(letter)
//}




// EXPERIMENTS:

// This works to get the value of a property of a particular player.
// experiencedPlayers[0]["height"] //ok,got the value out. Could be used to calculate average height.


//
//for experiencedPlayer in experiencedPlayers{
//    let height = experiencedPlayer["height"] as? Double
//    experiencedPlayers.sort(by: height)
//    print("\(experiencedPlayer["height"] ?? 0)")
//}



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


