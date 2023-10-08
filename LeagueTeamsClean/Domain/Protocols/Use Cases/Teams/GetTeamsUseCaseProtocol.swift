//
//  GetTeamsUseCaseProtocol.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 08/10/2023.
//

import Foundation
import LeagueTeamsCleanNetworking

/// A protocol defining the contract for fetching teams associated with a specific league.
///
/// The conforming type must implement a mechanism to asynchronously retrieve
/// an array of ``Team`` objects based on the provided ``League`` input. Any errors
/// during the fetching process should be thrown to the caller.
protocol GetTeamsUseCaseProtocol {
    
    /// Asynchronously fetches an array of teams for a given league.
    ///
    /// - Parameter league: The ``League`` for which the teams should be fetched.
    ///
    /// - Returns: A list of ``Team`` objects representing the teams in the specified league.
    ///
    /// - Throws: An error if there was an issue fetching the teams for the provided league.
    func execute(league: League) async throws -> [Team]
}

extension GetTeamsUseCaseProtocol {
    /// Returns every second ``Team`` from the provided list, starting from the first one.
    func filteredOneOutOfTwo(teams: [Team]) -> [Team] {
        return teams.enumerated().compactMap { index, team in
            index.isMultiple(of: 2) ? team : nil
        }
    }
}

extension Array {
    func antiAlphabeticSort() -> [Element] where Element == Team {
        // Team conforms to Comparable Protocol
        return sorted { $0 > $1 }
    }
}
