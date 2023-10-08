import Foundation

public enum TeamsRequest: RequestProtocol {
    case getTeamsForLeague(name: String)

    public var path: String {
        "/api/v1/json/50130162/search_all_teams.php"
    }

    public var urlParams: [String: String?] {
        switch self {
        case let .getTeamsForLeague(name):
            return ["l": name]
        }
    }

    public var requestType: RequestType { .GET }
}
