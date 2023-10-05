import Foundation

struct League: Identifiable {

    let id: Int
    let name: String?
    let sport: String?
    let leagueAlternate: String?

    internal init(id: Int, name: String? = nil, sport: String? = nil, leagueAlternate: String? = nil) {
        self.id = id
        self.name = name
        self.sport = sport
        self.leagueAlternate = leagueAlternate
    }
}

extension League {
    static var premierLeague: League {
        League(id: 4328, name: "English Premier League", sport: "Soccer", leagueAlternate: "Premier League")
    }

    static var ligue1: League {
        League(id: 4334, name: "French Ligue 1", sport: "Soccer", leagueAlternate: "Ligue 1 Uber Eats")
    }
}
