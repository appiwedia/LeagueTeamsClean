//
//  FetchLeagueServicesMock.swift
//  LeagueTeamsCleanTests
//
//  Created by Mickael Mas on 29/11/2022.
//

import XCTest
@testable import LeagueTeamsClean

final class FetchTeamsServicesTests: XCTestCase {

    var requestManager = RequestManager(apiManager: APIManagerMock())
    var teamsRepository: TeamsRepository?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        teamsRepository = TeamsRepositoryMock(requestManager: requestManager)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAntiAlphabeticSort() async throws {

        guard let ligue1Teams = try await teamsRepository?.fetchTeams(for: .ligue1) else {
            XCTFail("Teams should not be nil")
            return
        }

        let sortedLigue1Teams = ligue1Teams.antiAlphabeticSort()
        XCTAssertTrue(sortedLigue1Teams[0] > sortedLigue1Teams[1], "Teams should be sorted by descending order")
    }
}
