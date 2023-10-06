//
//  LeagueRepositoryDefault.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 06/10/2023.
//

import Foundation

struct LeaguesRepositoryDefault {
    private let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }
}

// MARK: - LeaguesRepositoryDefault
extension LeaguesRepositoryDefault: LeaguesRepository {
    /**
     Fetches all available leagues asynchronously.
     - Returns: An array of ``League`` objects representing the fetched leagues.
    */
    func fetchAllLeagues() async throws -> [League] {
        let request = LeaguesRequest.allLeagues
        do {
            let leaguesResponse: LeaguesDTOResponse = try await
            requestManager.perform(request)
            return leaguesResponse.leagues.map(League.init)
        } catch {
            throw LeagueRepositoryError.mappingError
        }
    }
}

// MARK: - Errors
private extension LeaguesRepositoryDefault {
    enum LeagueRepositoryError: Error {
        /// A mapping error
        case mappingError
    }
}
