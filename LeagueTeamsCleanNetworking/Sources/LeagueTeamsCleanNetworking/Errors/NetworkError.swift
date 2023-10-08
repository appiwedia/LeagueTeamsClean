import Foundation

/// Represents errors that can occur during network operations.
public enum NetworkError: LocalizedError {

    /// Indicates that the response from the server was not as expected or invalid.
    case invalidServerResponse

    /// Indicates that the provided URL string is malformed or invalid.
    case invalidURL
    
    /// Provides a description for each error case.
    public var errorDescription: String? {
        switch self {
        case .invalidServerResponse:
            return "The server returned an invalid response."
        case .invalidURL:
            return "URL string is malformed."
        }
    }
}

