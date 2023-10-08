//
//  LeaguesViewModel.swift
//  LeagueTeamsClean
//
//  Created by Mickael Mas on 05/10/2023.
//

import SwiftUI

@MainActor
final class TeamsViewModel: ObservableObject {

    @Published var teams: [Team] = []
    @Published var selectedLeague: League?
    @Published var isLoading: Bool
    @Published var searchText: String = ""

    private var leagues: [League] = []

    private let teamsUseCase: GetTeamsUseCase
    private let leaguesUseCase: GetLeaguesUseCase

    var navigationTitle: String {
        selectedLeague?.name ?? "FDJ Leagues"
    }

    var filteredLeagues: [League] {
        leagues.filter {
            if searchText.isEmpty {
                return true
            }
            return $0.name.contains(searchText)
        }
    }

    init(
        isLoading: Bool = true,
        teamsUseCase: GetTeamsUseCase,
        leaguesUseCase: GetLeaguesUseCase
    ) {
        self.isLoading = isLoading
        self.teamsUseCase = teamsUseCase
        self.leaguesUseCase = leaguesUseCase

        Task {
            await fetchAllLeagues()
        }
    }

    func fetchTeams(for league: League) async {
        do {
            self.teams = try await teamsUseCase.execute(league: league)
            await stopLoading()
        } catch {
            print("Error fetching teams...\(error.localizedDescription)")
        }
    }

    func fetchAllLeagues() async {
        do {
            self.leagues = try await leaguesUseCase.execute()
        } catch {
            print("Error fetching leagues...\(error.localizedDescription)")
        }
    }

    func selectLeague(_ league: League) async {
        self.selectedLeague = league
        resetTeams()
        await startLoading()
        await fetchTeams(for: league)
    }


    // MARK: - Private
    private func resetTeams() {
        searchText = ""
        teams = []
    }

    private func startLoading() async {
        isLoading = true
    }

    private func stopLoading() async {
        isLoading = false
    }
}
