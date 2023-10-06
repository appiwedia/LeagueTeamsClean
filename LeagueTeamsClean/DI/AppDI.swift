//
//  AppDI.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import Foundation
import LeagueTeamsCleanNetworking

protocol AppDIInterface {
    func teamsViewModelDependencies() -> TeamsViewModel
}

public class AppDI: AppDIInterface {

    static let shared = AppDI()

    @MainActor
    func teamsViewModelDependencies() -> TeamsViewModel {

        //MARK: Data Layer
        let apiManager: APIManagerProtocol = APIManager()
        let requestManager = RequestManager(apiManager: apiManager)

        //MARK: Domain Layer
        let teamsService: TeamsRepository = TeamsRepositoryDefault(requestManager: requestManager)
        let leaguesRepository: LeaguesRepository = LeaguesRepositoryDefault(requestManager: requestManager)

        //MARK: Presentation
        let viewModel = TeamsViewModel(teamsService: teamsService, leaguesService: leaguesRepository)

        return viewModel
    }
}

