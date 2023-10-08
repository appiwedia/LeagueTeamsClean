import Foundation

/// A protocol that defines the requirements for a data parser that can transform raw `Data` into a specified `Decodable` type.
public protocol DataParserProtocol {
    
    /// Parses the provided `Data` into an object of a specified `Decodable` type.
    ///
    /// - Parameter data: The raw data to be parsed.
    /// - Returns: A parsed object of type `T`, where `T` conforms to `Decodable`.
    /// - Throws: Throws an error if parsing fails.
    func parse<T: Decodable>(data: Data) throws -> T
}
