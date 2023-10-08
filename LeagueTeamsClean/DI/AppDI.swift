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
        let viewModel = TeamsViewModel(
            teamsUseCase: GetTeamsUseCase(),
            leaguesUseCase: GetLeaguesUseCase()
        )

        return viewModel
    }
}

