//
//  GetTeamsUseCaseProtocol.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 08/10/2023.
//

import Foundation
import LeagueTeamsCleanNetworking

/// A protocol defining the contract for fetching leagues.
///
/// The conforming type must implement a mechanism to asynchronously retrieve
/// an array of ``League`` objects. Any errors during the fetching process should
/// be thrown to the caller.
protocol GetLeaguesUseCaseProtocol {
    
    /// Asynchronously fetches an array of leagues.
    ///
    /// - Returns: A list of `League` objects representing the fetched leagues.
    ///
    /// - Throws: An error if there was an issue fetching the leagues.
    func execute() async throws -> [League]
}

