//
//  LeagueTeamsCleanApp.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

@main
struct LeagueTeamsCleanApp: App {
    @StateObject var teamsViewModel = AppDI.shared.teamsViewModelDependencies()

    var body: some Scene {
        WindowGroup {
            TeamsView(viewModel: teamsViewModel)
        }
    }
}
