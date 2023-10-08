import Foundation

public enum LeaguesRequest: RequestProtocol {
    case allLeagues

    public var path: String {
        "/api/v1/json/50130162/all_leagues.php"
    }   

    public var requestType: RequestType { .GET }
}
