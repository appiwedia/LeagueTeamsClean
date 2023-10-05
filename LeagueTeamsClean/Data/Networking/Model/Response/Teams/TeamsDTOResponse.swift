//
//  TeamsResponse.swift
//  FDJLeagues
//
//  Created by Mickael Mas on 05/10/2023.
//

import Foundation

// MARK: - TeamResponse
struct TeamsDTOResponse: Decodable {
    let teams: [TeamDTO]
}
