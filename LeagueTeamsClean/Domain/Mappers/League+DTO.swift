import Foundation
import LeagueTeamsCleanNetworking

extension League {
    /// Creates a `League` instance from a given `LeagueDTO` object.
    ///
    /// This initializer attempts to map properties from a `LeagueDTO` to a `League`. It enforces certain validations, such as ensuring the existence
    /// of a valid `id` and `name`. If any of these validations fail, the initializer will return `nil`.
    ///
    /// - Parameter dto: The `LeagueDTO` data transfer object containing the data to be mapped.
    ///
    /// - Returns: An optional `League` instance. Returns `nil` if required data is missing or cannot be properly decoded.
    init?(dto: LeagueDTO) {
        
        // Attempt to decode the league ID from the DTO.
        guard let idString = dto.idLeague, let id = Int(idString) else {
            return nil
        }
        
        // Ensure that the league name exists.
        guard let name = dto.strLeague else {
            return nil
        }
        
        // Map the decoded and validated properties.
        self.id = id
        self.name = name
        self.sport = dto.strSport
        self.leagueAlternate = dto.strLeagueAlternate
    }
}
