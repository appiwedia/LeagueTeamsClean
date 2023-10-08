import Foundation

/// Represents API requests related to teams.
///
/// Conforms to `RequestProtocol` to define details of the team-related requests.
public enum TeamsRequest: RequestProtocol {
    
    /// Represents a request to fetch all teams for a given league by its name.
    ///
    /// - Parameter name: The name of the league for which teams need to be fetched.
    case getTeamsForLeague(name: String)

    /// The path for the API endpoint related to the request.
    public var path: String {
        "/api/v1/json/50130162/search_all_teams.php"
    }

    /// URL parameters to be included in the request.
    ///
    /// Depending on the request type, it defines the necessary parameters for the API call.
    public var urlParams: [String: String?] {
        switch self {
        case let .getTeamsForLeague(name):
            return ["l": name]
        }
    }

    /// The HTTP method associated with the request.
    public var requestType: RequestType { .GET }
}

