import Foundation
import LeagueTeamsCleanNetworking

struct GetTeamsUseCaseMock {
    
    private let teamsRepository: TeamsRepository
    
    init(teamsRepository: TeamsRepository = TeamsRepositoryDefault(requestManager: APIManagerMock())) {
        self.teamsRepository = teamsRepository
    }
}

// MARK: - Business rule 1
extension GetTeamsUseCaseMock: GetTeamsUseCaseProtocol {
    func execute(league: League) async throws -> [Team] {
        let teams = try await teamsRepository.fetchTeams(for: league)
        return filteredOneOutOfTwo(teams: teams).antiAlphabeticSort()
    }
}
