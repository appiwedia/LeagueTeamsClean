//
//  FetchTeamsServicesMock.swift
//  LeagueTeamsCleanTests
//
//  Created by Mickael Mas on 05/.
//

import Foundation
import LeagueTeamsCleanNetworking

struct TeamsRepositoryMock {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager(apiManager: APIManagerMock())) {
        self.requestManager = requestManager
    }
}


extension TeamsRepositoryMock: TeamsRepository {
    func fetchTeams(for league: League) async throws -> [Team] {
        let request = TeamsRequest.getTeamsForLeague(name: league.name)
        let teamsResponse: TeamsDTOResponse = try await
        requestManager.perform(request)
        return teamsResponse.teams.compactMap(Team.init)
    }
}
