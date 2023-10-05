import Foundation

enum LeaguesRequest: RequestProtocol {
    case allLeagues

    var path: String {
        "/api/v1/json/50130162/all_leagues.php"
    }   

    var requestType: RequestType { .GET }
}
