import Foundation

protocol TeamsRepository {
    func fetchTeams(for league: League) async throws -> [Team]
}

// MARK: - Business rule 1
extension TeamsRepository {
    /// Returns every second ``Team`` from the provided list, starting from the first one.
    func filteredOneOutOfTwo(teams: [Team]) -> [Team] {
        return teams.enumerated().compactMap { index, team in
            index.isMultiple(of: 2) ? team : nil
        }
    }
}

// MARK: - Business rule 2
extension Array {
    func antiAlphabeticSort() -> [Element] where Element == Team {
        // Team conforms to Comparable Protocol
        return sorted { $0 > $1 }
    }
}
