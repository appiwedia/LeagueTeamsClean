import Foundation
import LeagueTeamsCleanNetworking

// MARK: - Extension (DTO)
extension Team {
    init?(dto: TeamDTO) {
        guard let decodedValue = dto.idTeam, let id = Int(decodedValue) else {
            return nil
        }
        self.id = id
        
        self.name = dto.strTeam
        
        if let bannerImageUrlString = dto.strTeamBanner {
            self.bannerImageUrl = URL(string: bannerImageUrlString)
        } else {
            self.bannerImageUrl = nil
        }
        
        if let badgeImageUrlString = dto.strTeamBadge {
            self.badgeImageUrl = URL(string: badgeImageUrlString)
        } else {
            self.badgeImageUrl = nil
        }
        
        self.country = dto.strCountry
        self.league = dto.strLeague
        self.descriptionEN = dto.strDescriptionEn
    }
}
