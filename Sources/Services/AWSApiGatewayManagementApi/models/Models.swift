// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension DeleteConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct DeleteConnectionInput: Swift.Equatable {
    /// This member is required.
    public var connectionId: Swift.String?

    public init(
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

struct DeleteConnectionInputBody: Swift.Equatable {
}

extension DeleteConnectionInputBody: Swift.Decodable {

    public init(from decoder: Swift.Decoder) throws {
    }
}

extension DeleteConnectionOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
    }
}

public struct DeleteConnectionOutput: Swift.Equatable {

    public init() { }
}

enum DeleteConnectionOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ForbiddenException": return try await ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "GoneException": return try await GoneException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "LimitExceededException": return try await LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension ForbiddenException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The caller is not authorized to invoke this operation.
public struct ForbiddenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "ForbiddenException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension GetConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct GetConnectionInput: Swift.Equatable {
    /// This member is required.
    public var connectionId: Swift.String?

    public init(
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

struct GetConnectionInputBody: Swift.Equatable {
}

extension GetConnectionInputBody: Swift.Decodable {

    public init(from decoder: Swift.Decoder) throws {
    }
}

extension GetConnectionOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: GetConnectionOutputBody = try responseDecoder.decode(responseBody: data)
            self.connectedAt = output.connectedAt
            self.identity = output.identity
            self.lastActiveAt = output.lastActiveAt
        } else {
            self.connectedAt = nil
            self.identity = nil
            self.lastActiveAt = nil
        }
    }
}

public struct GetConnectionOutput: Swift.Equatable {
    /// The time in ISO 8601 format for when the connection was established.
    public var connectedAt: ClientRuntime.Date?
    public var identity: ApiGatewayManagementApiClientTypes.Identity?
    /// The time in ISO 8601 format for when the connection was last active.
    public var lastActiveAt: ClientRuntime.Date?

    public init(
        connectedAt: ClientRuntime.Date? = nil,
        identity: ApiGatewayManagementApiClientTypes.Identity? = nil,
        lastActiveAt: ClientRuntime.Date? = nil
    )
    {
        self.connectedAt = connectedAt
        self.identity = identity
        self.lastActiveAt = lastActiveAt
    }
}

struct GetConnectionOutputBody: Swift.Equatable {
    let connectedAt: ClientRuntime.Date?
    let identity: ApiGatewayManagementApiClientTypes.Identity?
    let lastActiveAt: ClientRuntime.Date?
}

extension GetConnectionOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case connectedAt = "connectedAt"
        case identity = "identity"
        case lastActiveAt = "lastActiveAt"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectedAtDecoded = try containerValues.decodeTimestampIfPresent(.dateTime, forKey: .connectedAt)
        connectedAt = connectedAtDecoded
        let identityDecoded = try containerValues.decodeIfPresent(ApiGatewayManagementApiClientTypes.Identity.self, forKey: .identity)
        identity = identityDecoded
        let lastActiveAtDecoded = try containerValues.decodeTimestampIfPresent(.dateTime, forKey: .lastActiveAt)
        lastActiveAt = lastActiveAtDecoded
    }
}

enum GetConnectionOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ForbiddenException": return try await ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "GoneException": return try await GoneException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "LimitExceededException": return try await LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension GoneException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The connection with the provided id no longer exists.
public struct GoneException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "GoneException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension ApiGatewayManagementApiClientTypes.Identity: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case sourceIp = "sourceIp"
        case userAgent = "userAgent"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceIp = self.sourceIp {
            try encodeContainer.encode(sourceIp, forKey: .sourceIp)
        }
        if let userAgent = self.userAgent {
            try encodeContainer.encode(userAgent, forKey: .userAgent)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceIpDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sourceIp)
        sourceIp = sourceIpDecoded
        let userAgentDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .userAgent)
        userAgent = userAgentDecoded
    }
}

extension ApiGatewayManagementApiClientTypes {
    public struct Identity: Swift.Equatable {
        /// The source IP address of the TCP connection making the request to API Gateway.
        /// This member is required.
        public var sourceIp: Swift.String?
        /// The User Agent of the API caller.
        /// This member is required.
        public var userAgent: Swift.String?

        public init(
            sourceIp: Swift.String? = nil,
            userAgent: Swift.String? = nil
        )
        {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }
    }

}

extension LimitExceededException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.
public struct LimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "LimitExceededException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension PayloadTooLargeException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: PayloadTooLargeExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The data has exceeded the maximum size allowed.
public struct PayloadTooLargeException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "PayloadTooLargeException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct PayloadTooLargeExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension PayloadTooLargeExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

public struct PostToConnectionInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "PostToConnectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<PostToConnectionInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<PostToConnectionOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        if let data = input.operationInput.data {
            let dataData = data
            let dataBody = ClientRuntime.HttpBody.data(dataData)
            input.builder.withBody(dataBody)
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<PostToConnectionInput>
    public typealias MOutput = ClientRuntime.OperationOutput<PostToConnectionOutput>
    public typealias Context = ClientRuntime.HttpContext
}

extension PostToConnectionInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case data = "Data"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let data = self.data {
            try encodeContainer.encode(data.base64EncodedString(), forKey: .data)
        }
    }
}

extension PostToConnectionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let connectionId = connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct PostToConnectionInput: Swift.Equatable {
    /// The identifier of the connection that a specific client is using.
    /// This member is required.
    public var connectionId: Swift.String?
    /// The data to be sent to the client specified by its connection id.
    /// This member is required.
    public var data: ClientRuntime.Data?

    public init(
        connectionId: Swift.String? = nil,
        data: ClientRuntime.Data? = nil
    )
    {
        self.connectionId = connectionId
        self.data = data
    }
}

struct PostToConnectionInputBody: Swift.Equatable {
    let data: ClientRuntime.Data?
}

extension PostToConnectionInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case data = "Data"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataDecoded = try containerValues.decodeIfPresent(ClientRuntime.Data.self, forKey: .data)
        data = dataDecoded
    }
}

extension PostToConnectionOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
    }
}

public struct PostToConnectionOutput: Swift.Equatable {

    public init() { }
}

enum PostToConnectionOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ForbiddenException": return try await ForbiddenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "GoneException": return try await GoneException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "LimitExceededException": return try await LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "PayloadTooLargeException": return try await PayloadTooLargeException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}
