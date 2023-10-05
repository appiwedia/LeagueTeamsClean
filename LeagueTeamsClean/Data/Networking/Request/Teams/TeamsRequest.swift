import Foundation

enum TeamsRequest: RequestProtocol {
    case getTeamsForLeague(name: String)

    var path: String {
        "/api/v1/json/50130162/search_all_teams.php"
    }

    var urlParams: [String: String?] {
        switch self {
        case let .getTeamsForLeague(name):
            return ["l": name]
        }
    }

    var requestType: RequestType {
        .GET
    }

    var mock: String {
        guard let path = Bundle.main.path(forResource: "TeamsFrenchLigue1Mock", ofType: "json")
        else { return "" }
        return path
    }
}
