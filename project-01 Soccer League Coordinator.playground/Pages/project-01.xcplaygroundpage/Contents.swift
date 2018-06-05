// iOS Techdegree Project 1: Soccer League Coordinator in Swift

//** Part 1: ** We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection constant to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.

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


//** Part 2: ** Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own collection for use in Part 3. Please note: your logic should work correctly regardless of the initial ordering of the players and the number of players. This solution should work if there are 18 players or 100.


// Divide the players into two groups, one for the experienced   players, another one for the inexperienced players.

for player in theLeague {
    if player["isExperienced"] as? Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}


// Sort experienced and inexperienced by height before we distribute onto teams. Use Descending order for experiencedPlayers and Ascending for inexperiencedPlayers so when I distribute into teams, in order, the heights average out.

let experiencedSortedByHeightDescending = experiencedPlayers.sorted { ($0["height"] as! Double) > ($1["height"] as! Double) }


// Checking results:
//print("These are the experienced players \(experiencedSortedByHeightDescending). There are \(experiencedSortedByHeightDescending.count) of them.")
//print("")


let inexperiencedSortedByHeightAscending = inexperiencedPlayers.sorted { ($0["height"] as! Double) < ($1["height"] as! Double) }

// Checking results:
//print("These are the inexperienced players \(inexperiencedSortedByHeightAscending). There are \(inexperiencedSortedByHeightAscending.count) of them.")
//print("")

// Now that I've sorted by experience AND height, I need to "deal" (as if from a deck of cards) the players into the 3 teams. If I distribute the experiencedPlayers in descending order and inxperiencedPlayers in ascending order, the average heights should be within 1.5" of each other. In order to do this in a single step, I'll create a master array that has experienced players in descending height and inexperienced in ascending height. When these are distributed, in order, to the 3 teams, the heights will balance out. **fix to accommodate doing exp and inexp separately.



let allTeams = [teamDragons, teamSharks, teamRaptors]

var averageExperiencedPlayersPerTeam = experiencedSortedByHeightDescending.count/allTeams.count
var averageInexperiencedPlayersPerTeam = inexperiencedSortedByHeightAscending.count/allTeams.count
var averagePlayersPerTeam = averageExperiencedPlayersPerTeam + averageInexperiencedPlayersPerTeam


for player in experiencedSortedByHeightDescending {
    if teamDragons.count < averageExperiencedPlayersPerTeam && teamDragons.count < (teamSharks.count + 1) {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}



// var averageInexperiencedPlayersPerTeam = inexperiencedSortedByHeightAscending.count/allTeams.count

for player in inexperiencedSortedByHeightAscending {
    if teamDragons.count < averagePlayersPerTeam && teamDragons.count < (teamSharks.count + 1) {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

print(teamDragons)
print("\n")
print(teamSharks)
print("\n")
print(teamRaptors)
print("\n")



//      **
//let descendingAscendingPlayersArray = experiencedSortedByHeightDescending + inexperiencedSortedByHeightAscending
//
//let allTeams = [teamDragons, teamSharks, teamRaptors]
//
//var averagePlayersPerTeam = descendingAscendingPlayersArray.count/allTeams.count
//
//for player in descendingAscendingPlayersArray {
//    if teamDragons.count < averagePlayersPerTeam && teamDragons.count < (teamSharks.count + 1) {
//        teamDragons.append(player)
//    } else if teamSharks.count < teamDragons.count {
//        teamSharks.append(player)
//    } else {
//        teamRaptors.append(player)
//    }
//}

//      **

// print(teamDragons)

// Calculate average height and print to console. For each team add the heights of all players and divide by teamName.count. Need to make count a Double since Swift won't let me divide Double by Int (due to type safety.)


var heightTotalDragons = 0.0
for player in teamDragons {
    if let height = player["height"] as? Double{
    heightTotalDragons += height
    }
}
let numberOfDragons: Double = Double(teamDragons.count)
print("teamDragons' average height is \(heightTotalDragons/numberOfDragons) inches.")


var heightTotalSharks = 0.0
for player in teamSharks {
    if let height = player["height"] as? Double {
    heightTotalSharks += height
    }
}
let numberOfSharks: Double = Double(teamSharks.count)
print("teamSharks' average height is \(heightTotalSharks/numberOfSharks) inches.")


var heightTotalRaptors = 0.0
for player in teamDragons {
    if let height = player["height"] as? Double {
    heightTotalRaptors += height
    }
}
let numberOfRaptors: Double = Double(teamRaptors.count)
print("teamRaptors' average height is \(heightTotalRaptors/numberOfRaptors) inches.")


//    ** Part 3: ** Write code that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:
//
//Dragons - March 17, 1pm
//Sharks - March 17, 3pm
//Raptors - March 18, 1pm
//When your complete code is run in a playground the letters should be stored in a collection named 'letters'. When the code is run, the letters should be visible in the console.


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


// Print Letters (and make sure they are not enclosed in [])
for letter in letters {
    print(letter)
}





