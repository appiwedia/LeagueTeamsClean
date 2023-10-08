import XCTest
@testable import LeagueTeamsCleanNetworking

final class LeagueTeamsCleanNetworkingTests: XCTestCase {
    private var requestManager: RequestManagerProtocol?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        requestManager = RequestManagerMock()
    }

    func testRequestLeagues() async throws {
        guard let response: LeaguesDTOResponse =
                try await requestManager?.perform(LeaguesRequest.allLeagues) else {
            XCTFail("Didn't get data from the request manager")
            return
        }
        
        let leagues = response.leagues
        
        let first = leagues.first
        let last = leagues.last

        XCTAssertEqual(first?.strLeague, "English Premier League")
        XCTAssertEqual(first?.idLeague, "4328")
        XCTAssertEqual(first?.strSport, "Soccer")
        XCTAssertEqual(first?.strLeagueAlternate, "Premier League")
        
        XCTAssertEqual(last?.strLeague, "TKO MMA")
        XCTAssertEqual(last?.idLeague, "5341")
        XCTAssertEqual(last?.strSport, "Fighting")
        XCTAssertEqual(last?.strLeagueAlternate, "TKO Major League MMA")
    }

    func testRequestTeamsFrenchLigue1() async throws {

        let frenchLigue1Name = "French Ligue 1"
        guard let response: TeamsDTOResponse =
                try await requestManager?.perform(TeamsRequest.getTeamsForLeague(name: frenchLigue1Name)) else {
            XCTFail("Didn't get data from the request manager")
            return
        }

        let teams = response.teams

        // Check if all teams are associated to the same league
        for team in teams {
            XCTAssertEqual(team.strLeague, frenchLigue1Name, "\(frenchLigue1Name) League is not the same than the team \(team.strLeague ?? "-")")
        }

        let first = teams.first
        let last = teams.last

        XCTAssertEqual(first?.idTeam, "133702", "133702 id team not found")
        XCTAssertEqual(first?.strTeam, "Ajaccio", "Ajaccio iteam is not found")

        XCTAssertEqual(last?.idTeam, "134789", "134789 id team not found")
        XCTAssertEqual(last?.strTeam, "Troyes", "Troyes iteam is not found")
    }
}
