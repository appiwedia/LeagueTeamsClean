import Foundation
import LeagueTeamsCleanNetworking

struct GetTeamsUseCase {
    
    private let teamsRepository: TeamsRepository
    
    init(teamsRepository: TeamsRepository = TeamsRepositoryDefault()) {
        self.teamsRepository = teamsRepository
    }
}

// MARK: - Business rule 1
extension GetTeamsUseCase: GetTeamsUseCaseProtocol {
    func execute(league: League) async throws -> [Team] {
        return try await teamsRepository.fetchTeams(for: league)
    }
}
