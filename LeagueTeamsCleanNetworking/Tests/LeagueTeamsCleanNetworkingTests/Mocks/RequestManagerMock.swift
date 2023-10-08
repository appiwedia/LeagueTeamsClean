import Foundation
import LeagueTeamsCleanNetworking

/// An implementation of the `RequestManagerProtocol` that manages and performs API requests.
public struct RequestManagerMock: RequestManagerProtocol {
    
    /// The API manager instance used to execute the API requests.
    public let apiManager: APIManagerProtocol

    /// Initializes a new instance of `RequestManager`.
    ///
    /// - Parameter apiManager: The `APIManagerProtocol` instance to use for API operations. Defaults to a default `APIManager` instance.
    init(apiManager: APIManagerProtocol = APIManagerMock()) {
        self.apiManager = apiManager
    }
    
    /// Executes an API request and returns the decoded response data.
    ///
    /// - Parameter data: An object conforming to `RequestProtocol` that encapsulates details of the API request.
    /// - Returns: A decoded object of type `T`, where `T` conforms to `Decodable`.
    /// - Throws: Throws an error if there's a problem with the request, parsing the response, or any other error condition.
    public func perform<T: Decodable>(_ data: RequestProtocol) async throws -> T {
        let data = try await apiManager.perform(data)
        let decoded: T = try parser.parse(data: data)
        return decoded
    }
}
