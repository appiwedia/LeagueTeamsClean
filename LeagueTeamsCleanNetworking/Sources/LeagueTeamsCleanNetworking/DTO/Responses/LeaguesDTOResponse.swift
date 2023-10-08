import Foundation

/// Represents the response structure containing a list of leagues.
public struct LeaguesDTOResponse: Decodable {

    /// An array of ``LeagueDTO`` objects representing individual leagues.
    public let leagues: [LeagueDTO]
}
