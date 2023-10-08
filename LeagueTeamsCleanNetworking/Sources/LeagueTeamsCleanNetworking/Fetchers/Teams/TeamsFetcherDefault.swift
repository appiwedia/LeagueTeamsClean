import Foundation

/// A fetcher responsible for managiing and performing team-related API requests.
public struct TeamsFetcherDefault {
    
    /// The request manager used to handle and execute API requests.
    private let requestManager: RequestManagerProtocol
    
    /// Initializes a new instance of `TeamsFetcherDefault`.
    ///
    /// - Parameter requestManager: The request manager responsible for managing and executing API requests. Defaults to a default `RequestManager` instance.
    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}


// MARK: - Teams fetcher
extension TeamsFetcherDefault: TeamsFetcher {
    /**
     Fetches all available teams asynchronously for a league name.
     - Returns: An array of ``TeamDTO`` objects representing the fetched teams for a league.
    */
    public func fetchTeams(for leagueName: String) async throws -> [TeamDTO] {
        let request = TeamsRequest.getTeamsForLeague(name: leagueName)
        let teamsResponse: TeamsDTOResponse = try await requestManager.perform(request)
        return teamsResponse.teams.map { $0 }
    }
}
