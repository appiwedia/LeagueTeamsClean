import Foundation

/// A fetcher responsible for handling league-related API requests.
public struct LeaguesFetcherDefault {
    
    /// The request manager used to perform API requests.
    private let requestManager: RequestManagerProtocol

    /// Initializes a new instance of `LeaguesFetcherDefault`.
    ///
    /// - Parameter requestManager: The request manager responsible for executing API requests.
    ///                             Defaults to a default `RequestManager` instance.
    public init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}


// MARK: - Leagues fetcher
extension LeaguesFetcherDefault: LeaguesFetcher {
    /**
     Fetches all available leagues asynchronously.
     - Returns: An array of ``LeagueDTO`` objects representing the fetched leagues.
    */
    public func fetchAllLeagues() async throws -> [LeagueDTO] {
        let request = LeaguesRequest.allLeagues
        let leaguesResponse: LeaguesDTOResponse = try await requestManager.perform(request)
        return leaguesResponse.leagues.map { $0 }
    }
}
