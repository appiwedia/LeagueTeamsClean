import Foundation

/// A concrete implementation of the ``DataParserProtocol`` that uses `JSONDecoder` to parse JSON data.
class JSONDataParser: DataParserProtocol {
    
    /// The JSON decoder used to decode JSON data.
    private var jsonDecoder: JSONDecoder

    /// Initializes a new instance of `JSONDataParser`.
    ///
    /// - Parameter jsonDecoder: The `JSONDecoder` instance to use for decoding. Defaults to a default `JSONDecoder` instance with a `.convertFromSnakeCase` key decoding strategy.
    init(jsonDecoder: JSONDecoder = JSONDecoder()) {
        self.jsonDecoder = jsonDecoder
        self.jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
    }

    /// Parses the provided JSON `Data` into an object of a specified `Decodable` type.
    ///
    /// - Parameter data: The raw JSON data to be parsed.
    /// - Returns: A parsed object of type `T`, where `T` conforms to `Decodable`.
    /// - Throws: Throws an error if JSON decoding fails.
    func parse<T: Decodable>(data: Data) throws -> T {
        return try jsonDecoder.decode(T.self, from: data)
    }
}
