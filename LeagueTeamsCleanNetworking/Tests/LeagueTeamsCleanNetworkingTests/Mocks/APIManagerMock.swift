import Foundation
@testable import LeagueTeamsCleanNetworking

public enum APIManagerError: Error {
    case noMockFileDefined
}

public struct APIManagerMock: APIManagerProtocol {
    public func perform(_ request: RequestProtocol) async throws -> Data {
        guard let path = Bundle.module.path(forResource: (request.path as NSString).lastPathComponent, ofType: "json")
        else {
            throw APIManagerError.noMockFileDefined
        }
        return try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
    }
}
