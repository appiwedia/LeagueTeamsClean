import Foundation

/// Represents the response structure containing a list of teams.
public struct TeamsDTOResponse: Decodable {

    /// An array of ``TeamDTO`` objects representing individual teams.
    public let teams: [TeamDTO]
}

