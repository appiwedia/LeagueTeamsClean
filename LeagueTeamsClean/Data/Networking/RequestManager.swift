protocol RequestManagerProtocol {
    var apiManager: APIManagerProtocol { get }
    var parser: DataParserProtocol { get }
    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T
}

struct RequestManager: RequestManagerProtocol {
    internal let apiManager: APIManagerProtocol

    init(apiManager: APIManagerProtocol = APIManager()) {
        self.apiManager = apiManager
    }
    
    func perform<T: Decodable>(_ data: RequestProtocol) async throws -> T {
        let data = try await apiManager.perform(data)
        let decoded: T = try parser.parse(data: data)
        return decoded
    }
}

// MARK: - Returns Data Parser
extension RequestManagerProtocol {
    var parser: DataParserProtocol {
        return DataParser()
    }
}
