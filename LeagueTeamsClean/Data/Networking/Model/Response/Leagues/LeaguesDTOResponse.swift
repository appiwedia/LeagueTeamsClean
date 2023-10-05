//
//  LeaguesResponse.swift
//  FDJLeagues
//
//  Created by Mickael Mas on 05/10/2023.
//

import Foundation

// MARK: - LeaguesResponse
struct LeaguesDTOResponse: Decodable {
    let leagues: [LeagueDTO]
}
