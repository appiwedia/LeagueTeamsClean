import Foundation

/// An implementation of the ``APIManagerProtocol`` for making API requests.
public struct APIManager: APIManagerProtocol {

    /// An instance of `URLSession` used for making network requests.
    private let urlSession: URLSession

    /// Initializes a new instance of `APIManager`.
    ///
    /// - Parameter urlSession: The `URLSession` instance to use for making requests. Defaults to `URLSession.shared`.
    public init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }

    /**
     Performs an API request and returns the response data.
     
     - Parameter data: An object conforming to ``RequestProtocol`` representing the API request.
     - Returns: A `Data` object containing the response data.
     - Throws: Throws a ``NetworkError/invalidServerResponse`` error if the server's HTTP response status code is not 200.
     */
    public func perform(_ data: RequestProtocol) async throws -> Data {
        let (data, response) = try await urlSession.data(for: data.request())
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        return data
    }
}
