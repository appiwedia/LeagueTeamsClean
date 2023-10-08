import Foundation
import LeagueTeamsCleanNetworking

struct GetLeaguesUseCase {
    
    private let leaguesRepository: LeaguesRepository
    
    init(leaguesRepository: LeaguesRepository = LeaguesRepositoryDefault()) {
        self.leaguesRepository = leaguesRepository
    }
}

extension GetLeaguesUseCase: GetLeaguesUseCaseProtocol {
    func execute() async throws -> [League] {
        return try await leaguesRepository.fetchAllLeagues()
    }
}
