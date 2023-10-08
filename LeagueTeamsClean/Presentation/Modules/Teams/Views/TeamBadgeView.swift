//
//  TeamBadgeView.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

struct TeamBadgeView: View {
    var team: Team

    var body: some View {
        VStack {
            AsyncImage(url: team.badgeImageUrl, transaction: .init(animation: .spring())) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .transition(.opacity.combined(with: .scale))
                case .failure:
                    ProgressView()
                @unknown default:
                    Color.gray
                }
            }.padding()
            
            Text(team.name ?? "")
                .foregroundColor(.black)
        }
    }
}

struct TeamBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        TeamBadgeView(team: .psg)
    }
}
