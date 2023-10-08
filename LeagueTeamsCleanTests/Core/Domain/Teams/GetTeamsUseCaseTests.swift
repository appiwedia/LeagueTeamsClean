import XCTest
@testable import LeagueTeamsClean

final class GetTeamsUseCaseTests: XCTestCase {

    var teamsUseCase: GetTeamsUseCaseMock?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        teamsUseCase = GetTeamsUseCaseMock()
    }

    func testAntiAlphabeticSort() async throws {
        // GIVEN
        guard let ligue1Teams = try await teamsUseCase?.execute(league: .ligue1) else {
            XCTFail("Teams should not be nil")
            return
        }

        // WHEN
        let sortedLigue1Teams = ligue1Teams.antiAlphabeticSort()
        
        // THEN
        XCTAssertTrue(sortedLigue1Teams[0] > sortedLigue1Teams[1], "Teams should be sorted by descending order")
    }
    
    func testTeamFilteredOneOutOfTwo() async throws {
        // GIVEN
        let teams: [Team] = [
            .psg,
            .fcNantes,
            .marseille,
            .lens,
            .monaco
        ]

        // WHEN
        let filteredTeams = teams.filteredOneOutOfTwo()
        
        // THEN
        XCTAssertEqual(filteredTeams, [.psg, .marseille, .monaco])
        XCTAssertEqual(filteredTeams.count, 3, "Filtered teams count should be equals to 2")
        XCTAssertEqual(filteredTeams.first, .psg, "FC Nantes should be the first")

    }
}
