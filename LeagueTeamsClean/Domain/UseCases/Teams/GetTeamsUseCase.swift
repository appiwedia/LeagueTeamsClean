import Foundation
import LeagueTeamsCleanNetworking

struct GetTeamsUseCase {
    
    private let teamsRepository: TeamsRepository
    
    init(teamsRepository: TeamsRepository = TeamsRepositoryDefault()) {
        self.teamsRepository = teamsRepository
    }
}

extension GetTeamsUseCase: GetTeamsUseCaseProtocol {
    func execute(league: League) async throws -> [Team] {
        let teams = try await teamsRepository.fetchTeams(for: league)
        let filteredTeams = teams.filteredOneOutOfTwo()
        return filteredTeams.antiAlphabeticSort()
    }
}
