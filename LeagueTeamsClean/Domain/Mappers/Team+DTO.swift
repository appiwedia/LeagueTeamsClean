import Foundation
import LeagueTeamsCleanNetworking

// MARK: - Extension (DTO)
extension Team {
    /// Creates a `Team` instance from a given `TeamDTO` object.
    ///
    /// This initializer attempts to map properties from a `TeamDTO` to a `Team`. If any required field is missing or cannot be decoded properly,
    /// the initializer fails and returns `nil`.
    ///
    /// - Parameter dto: The `TeamDTO` data transfer object containing the data to be mapped.
    ///
    /// - Returns: An optional `Team` instance. Returns `nil` if a required field is missing or cannot be decoded.
    init?(dto: TeamDTO) {
        guard let decodedValue = dto.idTeam, let id = Int(decodedValue) else {
            return nil
        }
        self.id = id
        self.name = dto.strTeam
        
        self.bannerImageUrl = dto.strTeamBanner.flatMap { URL(string: $0) }
        self.badgeImageUrl = dto.strTeamBadge.flatMap { URL(string: $0) }
        
        self.country = dto.strCountry
        self.league = dto.strLeague
        self.descriptionEN = dto.strDescriptionEN
    }
}
