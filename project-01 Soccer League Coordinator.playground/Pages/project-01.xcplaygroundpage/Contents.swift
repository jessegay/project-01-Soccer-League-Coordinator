// Create required collections (pleyers, experienced and inexperienced groups, teams, the league.)

let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "experience": true, "guardians": "Jim and Jan Smith"]

let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "experience": false, "guardians": "Clara Tanner"]

let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "experience": false, "guardians": "Clara Tanner"]

let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "experience": false, "guardians": "Clara Tanner"]

let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "experience": false, "guardians": "Clara Tanner"]

let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "experience": false, "guardians": "Clara Tanner"]

let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "experience": false, "guardians": "Clara Tanner"]

let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "experience": false, "guardians": "Clara Tanner"]

let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "experience": false, "guardians": "Clara Tanner"]

let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "experience": false, "guardians": "Clara Tanner"]

let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "experience": false, "guardians": "Clara Tanner"]

let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "experience": false, "guardians": "Clara Tanner"]

let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "experience": false, "guardians": "Clara Tanner"]

let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "experience": false, "guardians": "Clara Tanner"]

let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "experience": false, "guardians": "Clara Tanner"]

let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "experience": false, "guardians": "Clara Tanner"]

let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "experience": false, "guardians": "Clara Tanner"]

let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "experience": false, "guardians": "Clara Tanner"]

let herName = player1["name"]
herName

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
    if player.index(forKey: "experience") == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}
//  Afterwards   we   can   go   through   (iterate)   each   group   alternately   and   assign   players   to   the tree   teams
