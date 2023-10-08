import Foundation

protocol LeaguesRepository {
    func fetchAllLeagues() async throws -> [League]
}
