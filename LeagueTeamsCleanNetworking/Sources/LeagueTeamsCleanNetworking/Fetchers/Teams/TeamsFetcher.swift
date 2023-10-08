/// A protocol that defines the requirements for fetching team-related data based on league names.
public protocol TeamsFetcher {
    
    /// Fetches all teams associated with a specified league.
    ///
    /// - Parameter leagueName: The name of the league for which teams should be fetched.
    ///
    /// - Returns: An array of `TeamDTO` representing the fetched teams for the specified league.
    ///
    /// - Throws: Throws an error if fetching fails for any reason, such as network issues or data parsing errors.
    func fetchTeams(for leagueName: String) async throws -> [TeamDTO]
}
