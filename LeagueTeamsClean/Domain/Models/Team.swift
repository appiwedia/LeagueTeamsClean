//
//  Team.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import Foundation

struct Team: Identifiable, Hashable, Comparable {
    static func < (lhs: Team, rhs: Team) -> Bool {
        guard let teamName1 = lhs.name, let teamName2 = rhs.name else {
            return false
        }
        return teamName1 < teamName2
    }

    var id: Int = 0
    let name: String?
    let badgeImageUrl: URL?
    let bannerImageUrl: URL?
    let country: String?
    let league: String?
    let descriptionEN: String?

    init(
        id: Int,
        name: String? = nil,
        badgeImageUrl: URL? = nil,
        bannerImageUrl: URL? = nil,
        country: String? = nil,
        league: String? = nil,
        descriptionEN: String? = nil
    ) {
        self.id = id
        self.name = name
        self.badgeImageUrl = badgeImageUrl
        self.bannerImageUrl = bannerImageUrl
        self.country = country
        self.league = league
        self.descriptionEN = descriptionEN
    }
}

extension Team {
    static var mockTeams: [Team] {
        [
            Team(id: 1, name: "PSG", bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: nil),
            Team(id: 2, name: "FC Nantes", bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: nil),
            Team(id: 3, name: "OM", bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: nil),
            Team(id: 4, name: "Monaco", bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: nil),
            Team(id: 5, name: "Lens", bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: nil)
        ]
    }

    static var psg: Team {
        Team(id: 1, name: "PSG", badgeImageUrl: URL(string: "https://www.thesportsdb.com/images/media/team/badge/rwqrrq1473504808.png"), bannerImageUrl: nil, country: "France", league: "Ligue 1", descriptionEN: "Paris Saint-Germain Football Club, commonly referred to as Paris Saint-Germain, Paris SG, or simply Paris or PSG, is a French professional football club based in Paris. Founded in 1970, the club has traditionally worn red, blue and white kits. PSG has played their home matches in the 47,929-capacity Parc des Princes, in the 16th arrondissement of Paris, since 1974. The club plays in the highest tier of French football, Ligue 1.\r\n\r\nThe Parisian club established itself as a major force in France, and one of the major forces of European football in the 2010s. PSG have won 40 titles, making it the most successful French club in history by this measure. PSG are also the club with most consecutive seasons playing in the top-flight (they have been in Ligue 1 for 46 seasons since 1974), one of only two French clubs to have won a major European title, the most popular football club in France, and one of the most widely supported teams in the world.\r\n\r\nDomestically, the Parisians have won eight Ligue 1 titles, a record twelve Coupe de France, a record eight Coupe de la Ligue, and a record nine Trophée des Champions titles. In European football, they have won one UEFA Cup Winners' Cup and one UEFA Intertoto Cup. The capital club has also won one Ligue 2, regarded as a minor official title. PSG have a long-standing rivalry with Olympique de Marseille. The duo contest French football's most notorious match, known as Le Classique.\r\n\r\nThe State of Qatar, through its shareholding organisation Qatar Sports Investments (QSI), has been the club's owner since 2011. The takeover made Paris Saint-Germain the richest club in France and one of the wealthiest in the world. As of the 2018–19 season, PSG have the fifth-highest revenue in the footballing world with an annual revenue of €636m according to Deloitte, and are the world's eleventh most valuable football club, worth €825m according to Forbes.")
    }
}
