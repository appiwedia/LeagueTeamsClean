//
//  Team.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import Foundation

struct Team: Identifiable {
    let id: Int
    let name: String?
    let badgeImageUrl: URL?
    let bannerImageUrl: URL?
    let country: String?
    let league: String?
    let descriptionEN: String?
}

// MARK: - Comparable
extension Team: Comparable {
    static func < (lhs: Team, rhs: Team) -> Bool {
        guard let teamName1 = lhs.name, let teamName2 = rhs.name else {
            return false
        }
        return teamName1 < teamName2
    }
}
