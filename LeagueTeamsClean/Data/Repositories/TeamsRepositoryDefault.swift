//
//  TeamsRepositoryDefault.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 06/10/2023.
//

import Foundation
import LeagueTeamsCleanNetworking

struct TeamsRepositoryDefault {
    private let requestManager: RequestManagerProtocol
    
    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}

// MARK: - TeamsService
extension TeamsRepositoryDefault: TeamsRepository {
    /**
     Fetches all available teams asynchronously for a league.
     - Returns: An array of ``Team`` objects representing the fetched teams for a league.
     */
    func fetchTeams(for league: League) async throws -> [Team] {        
        let request = TeamsRequest.getTeamsForLeague(name: league.name)
        let teamsResponse: TeamsDTOResponse = try await
        requestManager.perform(request)
        return teamsResponse.teams.compactMap(Team.init)
    }
}
