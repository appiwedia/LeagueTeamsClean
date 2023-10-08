/// A protocol that defines the requirements for fetching league-related data.
public protocol LeaguesService {
    
    /// Fetches all available leagues.
    ///
    /// - Returns: An array of ``LeagueDTO`` representing the fetched leagues.
    /// - Throws: Throws an error if fetching fails for any reason, such as network issues or data parsing errors.
    func fetchAllLeagues() async throws -> [LeagueDTO]
}
