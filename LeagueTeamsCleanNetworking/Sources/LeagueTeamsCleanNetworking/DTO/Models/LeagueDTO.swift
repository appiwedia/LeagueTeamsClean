import Foundation

/// Represents a data transfer object for a sports league.
///
/// This struct is designed to map league information, typically fetched from a JSON API.
public struct LeagueDTO: Decodable {

    /// A unique identifier for the league.
    public let idLeague: String?

    /// The name of the league.
    public let strLeague: String?

    /// The type of sport to which the league belongs.
    public let strSport: String?

    /// Alternate names or titles for the league.
    public let strLeagueAlternate: String?
}

