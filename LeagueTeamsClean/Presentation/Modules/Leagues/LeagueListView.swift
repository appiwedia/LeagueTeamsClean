//
//  LeagueListView.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

struct LeagueListView: View {

    var filteredLeagues: [League]
    @Binding var searchText: String

    var selectLeague: (League) -> ()

    var body: some View {
        List(filteredLeagues) { league in
            Button {
                searchText = league.name
                selectLeague(league)
            } label: {
                Text(league.name)
            }
        }
    }
}

struct LeagueListView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueListView(
            filteredLeagues: [League.ligue1],
            searchText: .constant(""),
            selectLeague: { _ in }
        )
    }
}
