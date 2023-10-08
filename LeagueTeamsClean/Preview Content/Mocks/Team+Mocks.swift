//
//  Team+Mocks.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 08/10/2023.
//

import Foundation

// MARK: - Mocks
extension Team {
    static var mockTeams: [Team] {
        [
            .psg,
            .fcNantes,
            .marseille,
            .monaco,
            .lens
        ]
    }

    static var psg: Team {
        Team(
            id: 1,
            name: "PSG",
            badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/rwqrrq1473504808.png"),
            bannerImageUrl: nil,
            country: "France",
            league: "Ligue 1",
            descriptionEN: nil
        )
    }
    
    static var fcNantes: Team {
        Team(
            id: 2,
            name: "FC Nantes",
            badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/8r0dab1598797469.png"),
            bannerImageUrl: nil,
            country: "France",
            league: "Ligue 1",
            descriptionEN: nil
        )
    }
    
    static var marseille: Team {
        Team(
            id: 3,
            name: "Olympique de Marseille",
            badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/rwqrrq1473504808.png"),
            bannerImageUrl: nil,
            country: "France",
            league: "Ligue 1",
            descriptionEN: nil
        )
    }
    
    static var monaco: Team {
        Team(
            id: 4,
            name: "FC Monaco",
            badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/rwqrrq1473504808.png"),
            bannerImageUrl: nil,
            country: "France",
            league: "Ligue 1",
            descriptionEN: nil
        )
    }
    
    static var lens: Team {
        Team(
            id: 5,
            name: "Lens",
            badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/rwqrrq1473504808.png"),
            bannerImageUrl: nil,
            country: "France",
            league: "Ligue 1",
            descriptionEN: nil
        )
    }
}
