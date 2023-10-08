import Foundation

/// Represents API requests related to leagues.
///
/// Conforms to `RequestProtocol` to define details of the league-related requests.
public enum LeaguesRequest: RequestProtocol {
    
    /// Represents a request to fetch all available leagues.
    case allLeagues

    /// The path for the API endpoint related to the request.
    public var path: String {
        "/api/v1/json/50130162/all_leagues.php"
    }

    /// The HTTP method associated with the request.
    public var requestType: RequestType { .GET }
}
