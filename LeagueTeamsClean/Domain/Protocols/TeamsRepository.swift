import Foundation

protocol TeamsRepository {
    func fetchTeams(for league: League) async throws -> [Team]
}
