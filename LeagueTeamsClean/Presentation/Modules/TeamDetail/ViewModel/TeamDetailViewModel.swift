//
//  TeamDetailViewModel.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

final class TeamDetailViewModel: ObservableObject {

    @Published var team: Team

    init(team: Team) {
        self.team = team
    }
}

