//
//  FetchTeamsServicesMock.swift
//  LeagueTeamsCleanTests
//
//  Created by Mickael Mas on 05/.
//

import Foundation
@testable import LeagueTeamsClean

struct TeamsRepositoryMock {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager(apiManager: APIManagerMock())) {
        self.requestManager = requestManager
    }
}

extension TeamsRepositoryMock: TeamsRepository {
    func fetchTeams(for league: League) async throws -> [Team] {
        guard  let leagueName = league.name else { return [] }

        let request = TeamsRequest.getTeamsForLeague(name: leagueName)
        do {
            let teamsResponse: TeamsDTOResponse = try await
            requestManager.perform(request)
            let teams = teamsResponse.teams.compactMap(Team.init)
            return filteredOneOutOfTwo(teams: teams).antiAlphabeticSort()
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
