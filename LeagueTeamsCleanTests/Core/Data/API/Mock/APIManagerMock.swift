import Foundation
@testable import LeagueTeamsCleanNetworking

enum APIManagerError: Error {
    case noMockFileDefined
}

struct APIManagerMock: APIManagerProtocol {
    func perform(_ request: RequestProtocol) async throws -> Data {
        guard let path = Bundle.main.path(forResource: (request.path as NSString).lastPathComponent, ofType: "json")
        else {
            throw APIManagerError.noMockFileDefined
        }
        return try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
    }
}
