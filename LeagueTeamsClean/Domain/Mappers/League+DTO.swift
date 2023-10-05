import Foundation

extension League {
    init(dto: LeagueDTO) {
        if let idString = dto.idLeague, let id = Int(idString) {
            self.id = id
        } else {
            self.id = 0
        }
        self.name = dto.strLeague
        self.sport = dto.strSport
        self.leagueAlternate = dto.strLeagueAlternate
    }
}
