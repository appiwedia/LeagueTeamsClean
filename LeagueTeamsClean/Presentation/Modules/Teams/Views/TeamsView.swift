//
//  LeaguesView.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

struct TeamsView: View {

    @ObservedObject var viewModel: TeamsViewModel

    private let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationView {
            if !viewModel.searchText.isEmpty {
                LeagueListView(filteredLeagues: viewModel.filteredLeagues, searchText: $viewModel.searchText) { league in
                    Task {
                        await viewModel.selectLeague(league)
                    }
                }
            } else {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.teams, id: \.self) { team in
                            NavigationLink {
                                TeamDetailView(viewModel: TeamDetailViewModel(team: team))
                            } label: {
                                TeamBadgeView(team: team)
                            }
                        }
                    }
                }
                .navigationTitle(viewModel.navigationTitle)
            }
        }
        .overlay {
            if viewModel.isLoading && viewModel.selectedLeague != nil {
                ProgressView()
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $viewModel.searchText, prompt: "Search a league")
    }
}

struct LeaguesView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView(
            viewModel: TeamsViewModel(
                teamsService: TeamsRepositoryDefault(),
                leaguesService: LeaguesRepositoryDefault()
            )
        )
    }
}

