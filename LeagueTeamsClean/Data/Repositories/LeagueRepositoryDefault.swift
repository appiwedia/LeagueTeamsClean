//
//  LeagueRepositoryDefault.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 06/10/2023.
//

import Foundation
import LeagueTeamsCleanNetworking

struct LeaguesRepositoryDefault {
    private let leaguesService: LeaguesService

    init(leaguesService: LeaguesService = LeaguesServiceDefault()) {
        self.leaguesService = leaguesService
    }
}

extension LeaguesRepositoryDefault: LeaguesRepository {
    
    /// Fetches all available leagues asynchronously.
    /// - Returns: An array of ``League`` objects representing the fetched leagues.
    func fetchAllLeagues() async throws -> [League] {
        let leagues = try await leaguesService.fetchAllLeagues()
        return leagues.compactMap(League.init)
    }
}
