//
//  TeamsRepositoryDefault.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 06/10/2023.
//

import Foundation

struct TeamsRepositoryDefault {
    private let requestManager: RequestManagerProtocol
    
    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}

// MARK: - TeamsFetcher
extension TeamsRepositoryDefault: TeamsRepository {
    /**
     Fetches all available teams asynchronously for a league.
     - Returns: An array of ``Team`` objects representing the fetched teams for a league.
    */
    func fetchTeams(for league: League) async throws -> [Team] {
        guard let leagueName = league.name else {
            throw TeamsRepositoryError.invalidLeagueName
        }
        
        let request = TeamsRequest.getTeamsForLeague(name: leagueName)
        do {
            let teamsResponse: TeamsDTOResponse = try await
            requestManager.perform(request)
            let teams = teamsResponse.teams.compactMap(Team.init)
            
            // 1. Business rulle : Filtered teams 1 / 2
            let filteredTeams = filteredOneOutOfTwo(teams: teams)
            
            // 2. Business rule : Sorted teams by anti alphabetic sort
            let sortedTeams = filteredTeams.antiAlphabeticSort()
            return sortedTeams
        } catch {
            throw TeamsRepositoryError.mappingError
        }
    }
}

// MARK: - Errors
private extension TeamsRepositoryDefault {
    enum TeamsRepositoryError: Error {
        /// A mapping error
        case mappingError
        case invalidLeagueName
    }
}
