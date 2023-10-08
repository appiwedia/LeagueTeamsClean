//
//  FetchTeamsServicesMock.swift
//  LeagueTeamsCleanTests
//
//  Created by Mickael Mas on 05/.
//

import Foundation
@testable import LeagueTeamsCleanNetworking

struct TeamsServiceMock {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManagerMock()) {
        self.requestManager = requestManager
    }
}

extension TeamsServiceMock: TeamsService {
    func fetchTeams(for leagueName: String) async throws -> [TeamDTO] {
        let request = TeamsRequest.getTeamsForLeague(name: leagueName)
        let teamsResponse: TeamsDTOResponse = try await
        requestManager.perform(request)
        return teamsResponse.teams
    }
    
}
