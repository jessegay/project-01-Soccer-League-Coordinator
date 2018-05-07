// Create required collections (pleyers, experienced and inexperienced groups, teams, the league.)

let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "experience": true, "guardians": "Jim and Jan Smith"]

let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "experience": true, "guardians": "Clara Tanner"]

let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "experience": true, "guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "experience": false, "guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "experience": false, "guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "experience": false, "guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "experience": false, "guardians": "Jeff Adams"]

let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "experience": true, "guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "experience": true, "guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "experience": false, "guardians": "Gala Dali"]

let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "experience": false, "guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "experience": false, "guardians": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "experience": true, "guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "experience": false, "guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "experience": false, "guardians": "Claire Willis"]

let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "experience": true, "guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "experience": true, "guardians": "Wynonna Brown"]

let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "experience": true, "guardians": "Hyman and Rachel Krustofski"]



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
    if player["experience"] as! Bool == true {
        experiencedPlayers += [player]
    } else {
        inexperiencedPlayers += [player]
    }
}

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
// This works, but is kludgy. I guess I don't need to use optional chaining, and can use a simple loop, IF I cast player["experience"] as a Bool for the comparison.

//for player in theLeague {
//    if let experience = player["experience"] {
//    experiencedPlayers += [player]} else {
//    print("no experience here")
//    }
//}
//print("\(experiencedPlayers)")
//


//  Afterwards   we   can   go   through   (iterate)   each   group   alternately   and   assign   players   to   the tree   teams
