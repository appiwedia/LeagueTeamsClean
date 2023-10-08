import Foundation

/// A protocol defining the requirements for an API manager that can perform API requests.
public protocol APIManagerProtocol {
    /**
    Performs an API request and returns the response data.
    - Parameter request: An object conforming to ``RequestProtocol`` representing the APIrequest.
    - Returns: A `Data` object containing the response data.
    - Throws: Throws an error if the request fails or the server response is invalid.
    */
    func perform(_ request: RequestProtocol) async throws -> Data
}
