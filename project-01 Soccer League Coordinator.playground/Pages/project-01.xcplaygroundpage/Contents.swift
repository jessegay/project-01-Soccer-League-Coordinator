// iOS Techdegree Project 1: Soccer League Coordinator in Swift

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

// Checking count to see if the split is accurate.
experiencedPlayers.count
inexperiencedPlayers.count

// Sort experienced and inexperienced by height before we distribute onto teams. Use Descending order for experiencedPlayers and Ascending for inexperiencedPlayers so when I distribute into teams the heights average out.

let experiencedSortedByHeight = experiencedPlayers.sorted { ($0["height"] as! Double) > ($1["height"] as! Double) }

// Checking results
//print(experiencedSortedByHeight)

let inexperiencedSortedByHeight = inexperiencedPlayers.sorted { ($0["height"] as! Double) < ($1["height"] as! Double) }

// Checking results
//print(inexperiencedSortedByHeight)

// Now that I've sorted by experience AND height, I need to "deal" (as if from a deck of cards) the players into the 3 teams. If I distribute the experiencedPlayers in descending order and inxperiencedPlayers in ascending order, the average heights should be within 1.5" of each other.

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


// Calculate average height and print to console. For each team add the heights of all players and divide by teamName.count. Need to make count a Double since Swift won't let me divide Double by Int (due to type safety.)

var heightTotalDragons = 0.0
for player in teamDragons {
    let height = player["height"]
    heightTotalDragons += (height as? Double)!
}
let numberOfDragons: Double = Double(teamDragons.count)
print("teamDragons' average height is \(heightTotalDragons/numberOfDragons)")


var heightTotalSharks = 0.0
for player in teamSharks {
    let height = player["height"]
    heightTotalSharks += (height as? Double)!
}
let numberOfSharks: Double = Double(teamSharks.count) // : Double is syntactic sugar for clarity. Could delete.
print("teamSharks' average height is \(heightTotalSharks/numberOfSharks)")


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
// Create constants for team names and practice times. Not much more efficient than manually writing this info in each letter, but if I wrote more involved letters or wanted to use this template for other teams it could be useful.

let dragonsPracticeTime = "March 17th at 1pm"
let sharksPracticeTime = "March 17th at 3pm"
let raptorsPracticeTime = "March 18th at 1pm"

let dragonsName = "Dragons"
let sharksName = "Sharks"
let raptorsName = "Raptors"

// Create empty array of strings so I have a place to put the letters.

var letters = [String]()

// Create one letter for each team, add to letters array.

for player in teamDragons {
    if let guardians = player["guardians"], let name = player["name"] {
        let myLetter: String = "Hello \(guardians). \(name) has been drafted onto the famous \(dragonsName)! The first practice is on \(dragonsPracticeTime)."
        letters.append(myLetter)
    }
}


for player in teamSharks {
    if let guardians = player["guardians"], let name = player["name"] {
    let myLetter: String = "Hello \(guardians). \(name) has been drafted onto the famous \(sharksName)! The first practice is on \(sharksPracticeTime)."
    letters.append(myLetter)
    }
}


for player in teamRaptors {
    if let guardians = player["guardians"], let name = player["name"] {
        let myLetter: String = "Hello \(guardians). \(name) has been drafted onto the famous \(raptorsName)! The first practice is on \(raptorsPracticeTime)."
        letters.append(myLetter)
    }
}


// Print Letters (and make sure they are not enclosed in []
for letter in letters {
    print(letter)
}





