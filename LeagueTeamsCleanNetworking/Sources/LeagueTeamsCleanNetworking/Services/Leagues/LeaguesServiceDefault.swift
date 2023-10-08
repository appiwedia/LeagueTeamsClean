import Foundation

/// A service responsible for handling league-related API requests.
public struct LeaguesServiceDefault {
    
    /// The request manager used to perform API requests.
    private let requestManager: RequestManagerProtocol

    /// Initializes a new instance of ``LeaguesServiceDefault``.
    ///
    /// - Parameter requestManager: The request manager responsible for executing API requests.
    /// Defaults to a default `RequestManager` instance.
    public init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}

extension LeaguesServiceDefault: LeaguesService {
    /**
     Fetches all available leagues asynchronously.
     - Returns: An array of ``LeagueDTO`` objects representing the fetched leagues.
    */
    public func fetchAllLeagues() async throws -> [LeagueDTO] {
        let request = LeaguesRequest.allLeagues
        let leaguesResponse: LeaguesDTOResponse = try await requestManager.perform(request)
        return leaguesResponse.leagues
    }
}
