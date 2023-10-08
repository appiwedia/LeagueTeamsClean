import Foundation

/// A protocol defining the responsibilities for managing and executing API requests.
public protocol RequestManagerProtocol {
    
    /// The API manager responsible for performing the actual network requests.
    var apiManager: APIManagerProtocol { get }
    
    /// The parser responsible for transforming the response `Data` into a desired `Decodable` type.
    var parser: DataParserProtocol { get }
    
    /// Executes an API request and decodes the response data into a specified type.
    ///
    /// - Parameter request: An object conforming to `RequestProtocol` that encapsulates details of the API request.
    /// - Returns: A decoded object of type `T`, where `T` conforms to `Decodable`.
    /// - Throws: Throws an error if there's a problem executing the request, parsing the response, or if any other error condition arises.
    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T
}
