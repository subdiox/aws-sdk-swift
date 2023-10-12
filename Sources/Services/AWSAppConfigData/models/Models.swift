// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension AppConfigDataClientTypes.BadRequestDetails: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case invalidparameters = "InvalidParameters"
        case sdkUnknown
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
            case let .invalidparameters(invalidparameters):
                var invalidparametersContainer = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .invalidparameters)
                for (dictKey0, invalidParameterMap0) in invalidparameters {
                    try invalidparametersContainer.encode(invalidParameterMap0, forKey: ClientRuntime.Key(stringValue: dictKey0))
                }
            case let .sdkUnknown(sdkUnknown):
                try container.encode(sdkUnknown, forKey: .sdkUnknown)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let invalidparametersContainer = try values.decodeIfPresent([Swift.String: AppConfigDataClientTypes.InvalidParameterDetail?].self, forKey: .invalidparameters)
        var invalidparametersDecoded0: [Swift.String:AppConfigDataClientTypes.InvalidParameterDetail]? = nil
        if let invalidparametersContainer = invalidparametersContainer {
            invalidparametersDecoded0 = [Swift.String:AppConfigDataClientTypes.InvalidParameterDetail]()
            for (key0, invalidparameterdetail0) in invalidparametersContainer {
                if let invalidparameterdetail0 = invalidparameterdetail0 {
                    invalidparametersDecoded0?[key0] = invalidparameterdetail0
                }
            }
        }
        if let invalidparameters = invalidparametersDecoded0 {
            self = .invalidparameters(invalidparameters)
            return
        }
        self = .sdkUnknown("")
    }
}

extension AppConfigDataClientTypes {
    /// Detailed information about the input that failed to satisfy the constraints specified by a call.
    public enum BadRequestDetails: Swift.Equatable {
        /// One or more specified parameters are not valid for the call.
        case invalidparameters([Swift.String:AppConfigDataClientTypes.InvalidParameterDetail])
        case sdkUnknown(Swift.String)
    }

}

extension BadRequestException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: BadRequestExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.details = output.details
            self.properties.message = output.message
            self.properties.reason = output.reason
        } else {
            self.properties.details = nil
            self.properties.message = nil
            self.properties.reason = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The input fails to satisfy the constraints specified by the service.
public struct BadRequestException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// Details describing why the request was invalid.
        public internal(set) var details: AppConfigDataClientTypes.BadRequestDetails? = nil
        public internal(set) var message: Swift.String? = nil
        /// Code indicating the reason the request was invalid.
        public internal(set) var reason: AppConfigDataClientTypes.BadRequestReason? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "BadRequestException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        details: AppConfigDataClientTypes.BadRequestDetails? = nil,
        message: Swift.String? = nil,
        reason: AppConfigDataClientTypes.BadRequestReason? = nil
    )
    {
        self.properties.details = details
        self.properties.message = message
        self.properties.reason = reason
    }
}

struct BadRequestExceptionBody: Swift.Equatable {
    let message: Swift.String?
    let reason: AppConfigDataClientTypes.BadRequestReason?
    let details: AppConfigDataClientTypes.BadRequestDetails?
}

extension BadRequestExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case details = "Details"
        case message = "Message"
        case reason = "Reason"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(AppConfigDataClientTypes.BadRequestReason.self, forKey: .reason)
        reason = reasonDecoded
        let detailsDecoded = try containerValues.decodeIfPresent(AppConfigDataClientTypes.BadRequestDetails.self, forKey: .details)
        details = detailsDecoded
    }
}

extension AppConfigDataClientTypes {
    public enum BadRequestReason: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        /// Indicates there was a problem with one or more of the parameters. See InvalidParameters in the BadRequestDetails for more information.
        case invalidParameters
        case sdkUnknown(Swift.String)

        public static var allCases: [BadRequestReason] {
            return [
                .invalidParameters,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .invalidParameters: return "InvalidParameters"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = BadRequestReason(rawValue: rawValue) ?? BadRequestReason.sdkUnknown(rawValue)
        }
    }
}

extension GetLatestConfigurationInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        get throws {
            var items = [ClientRuntime.URLQueryItem]()
            guard let configurationToken = configurationToken else {
                let message = "Creating a URL Query Item failed. configurationToken is required and must not be nil."
                throw ClientRuntime.ClientError.unknownError(message)
            }
            let configurationTokenQueryItem = ClientRuntime.URLQueryItem(name: "configuration_token".urlPercentEncoding(), value: Swift.String(configurationToken).urlPercentEncoding())
            items.append(configurationTokenQueryItem)
            return items
        }
    }
}

extension GetLatestConfigurationInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/configuration"
    }
}

public struct GetLatestConfigurationInput: Swift.Equatable {
    /// Token describing the current state of the configuration session. To obtain a token, first call the [StartConfigurationSession] API. Note that every call to GetLatestConfiguration will return a new ConfigurationToken (NextPollConfigurationToken in the response) and must be provided to subsequent GetLatestConfiguration API calls. This token should only be used once. To support long poll use cases, the token is valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    /// This member is required.
    public var configurationToken: Swift.String?

    public init(
        configurationToken: Swift.String? = nil
    )
    {
        self.configurationToken = configurationToken
    }
}

struct GetLatestConfigurationInputBody: Swift.Equatable {
}

extension GetLatestConfigurationInputBody: Swift.Decodable {

    public init(from decoder: Swift.Decoder) throws {
    }
}

extension GetLatestConfigurationOutput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "GetLatestConfigurationOutput(contentType: \(Swift.String(describing: contentType)), nextPollConfigurationToken: \(Swift.String(describing: nextPollConfigurationToken)), nextPollIntervalInSeconds: \(Swift.String(describing: nextPollIntervalInSeconds)), versionLabel: \(Swift.String(describing: versionLabel)), configuration: \"CONTENT_REDACTED\")"}
}

extension GetLatestConfigurationOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            self.contentType = contentTypeHeaderValue
        } else {
            self.contentType = nil
        }
        if let nextPollConfigurationTokenHeaderValue = httpResponse.headers.value(for: "Next-Poll-Configuration-Token") {
            self.nextPollConfigurationToken = nextPollConfigurationTokenHeaderValue
        } else {
            self.nextPollConfigurationToken = nil
        }
        if let nextPollIntervalInSecondsHeaderValue = httpResponse.headers.value(for: "Next-Poll-Interval-In-Seconds") {
            self.nextPollIntervalInSeconds = Swift.Int(nextPollIntervalInSecondsHeaderValue) ?? 0
        } else {
            self.nextPollIntervalInSeconds = 0
        }
        if let versionLabelHeaderValue = httpResponse.headers.value(for: "Version-Label") {
            self.versionLabel = versionLabelHeaderValue
        } else {
            self.versionLabel = nil
        }
        switch httpResponse.body {
        case .data(let data):
            self.configuration = data
        case .stream(let stream):
            self.configuration = try stream.readToEnd()
        case .none:
            self.configuration = nil
        }
    }
}

public struct GetLatestConfigurationOutput: Swift.Equatable {
    /// The data of the configuration. This may be empty if the client already has the latest version of configuration.
    public var configuration: ClientRuntime.Data?
    /// A standard MIME type describing the format of the configuration content.
    public var contentType: Swift.String?
    /// The latest token describing the current state of the configuration session. This must be provided to the next call to GetLatestConfiguration. This token should only be used once. To support long poll use cases, the token is valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    public var nextPollConfigurationToken: Swift.String?
    /// The amount of time the client should wait before polling for configuration updates again. Use RequiredMinimumPollIntervalInSeconds to set the desired poll interval.
    public var nextPollIntervalInSeconds: Swift.Int
    /// The user-defined label for the AppConfig hosted configuration version. This attribute doesn't apply if the configuration is not from an AppConfig hosted configuration version. If the client already has the latest version of the configuration data, this value is empty.
    public var versionLabel: Swift.String?

    public init(
        configuration: ClientRuntime.Data? = nil,
        contentType: Swift.String? = nil,
        nextPollConfigurationToken: Swift.String? = nil,
        nextPollIntervalInSeconds: Swift.Int = 0,
        versionLabel: Swift.String? = nil
    )
    {
        self.configuration = configuration
        self.contentType = contentType
        self.nextPollConfigurationToken = nextPollConfigurationToken
        self.nextPollIntervalInSeconds = nextPollIntervalInSeconds
        self.versionLabel = versionLabel
    }
}

struct GetLatestConfigurationOutputBody: Swift.Equatable {
    let configuration: ClientRuntime.Data?
}

extension GetLatestConfigurationOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case configuration = "Configuration"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationDecoded = try containerValues.decodeIfPresent(ClientRuntime.Data.self, forKey: .configuration)
        configuration = configurationDecoded
    }
}

enum GetLatestConfigurationOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "BadRequestException": return try await BadRequestException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerException": return try await InternalServerException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ThrottlingException": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension InternalServerException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InternalServerExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// There was an internal failure in the service.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
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

struct InternalServerExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InternalServerExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension AppConfigDataClientTypes.InvalidParameterDetail: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case problem = "Problem"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let problem = self.problem {
            try encodeContainer.encode(problem.rawValue, forKey: .problem)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let problemDecoded = try containerValues.decodeIfPresent(AppConfigDataClientTypes.InvalidParameterProblem.self, forKey: .problem)
        problem = problemDecoded
    }
}

extension AppConfigDataClientTypes {
    /// Information about an invalid parameter.
    public struct InvalidParameterDetail: Swift.Equatable {
        /// The reason the parameter is invalid.
        public var problem: AppConfigDataClientTypes.InvalidParameterProblem?

        public init(
            problem: AppConfigDataClientTypes.InvalidParameterProblem? = nil
        )
        {
            self.problem = problem
        }
    }

}

extension AppConfigDataClientTypes {
    public enum InvalidParameterProblem: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        /// The parameter was corrupted and could not be understood by the service.
        case corrupted
        /// The parameter was expired and can no longer be used.
        case expired
        /// The client called the service before the time specified in the poll interval.
        case pollIntervalNotSatisfied
        case sdkUnknown(Swift.String)

        public static var allCases: [InvalidParameterProblem] {
            return [
                .corrupted,
                .expired,
                .pollIntervalNotSatisfied,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .corrupted: return "Corrupted"
            case .expired: return "Expired"
            case .pollIntervalNotSatisfied: return "PollIntervalNotSatisfied"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = InvalidParameterProblem(rawValue: rawValue) ?? InvalidParameterProblem.sdkUnknown(rawValue)
        }
    }
}

extension ResourceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
            self.properties.referencedBy = output.referencedBy
            self.properties.resourceType = output.resourceType
        } else {
            self.properties.message = nil
            self.properties.referencedBy = nil
            self.properties.resourceType = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The requested resource could not be found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
        /// A map indicating which parameters in the request reference the resource that was not found.
        public internal(set) var referencedBy: [Swift.String:Swift.String]? = nil
        /// The type of resource that was not found.
        public internal(set) var resourceType: AppConfigDataClientTypes.ResourceType? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        referencedBy: [Swift.String:Swift.String]? = nil,
        resourceType: AppConfigDataClientTypes.ResourceType? = nil
    )
    {
        self.properties.message = message
        self.properties.referencedBy = referencedBy
        self.properties.resourceType = resourceType
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
    let resourceType: AppConfigDataClientTypes.ResourceType?
    let referencedBy: [Swift.String:Swift.String]?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
        case referencedBy = "ReferencedBy"
        case resourceType = "ResourceType"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(AppConfigDataClientTypes.ResourceType.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let referencedByContainer = try containerValues.decodeIfPresent([Swift.String: Swift.String?].self, forKey: .referencedBy)
        var referencedByDecoded0: [Swift.String:Swift.String]? = nil
        if let referencedByContainer = referencedByContainer {
            referencedByDecoded0 = [Swift.String:Swift.String]()
            for (key0, string0) in referencedByContainer {
                if let string0 = string0 {
                    referencedByDecoded0?[key0] = string0
                }
            }
        }
        referencedBy = referencedByDecoded0
    }
}

extension AppConfigDataClientTypes {
    public enum ResourceType: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        /// Resource type value for the Application resource.
        case application
        /// Resource type value for the Configuration resource.
        case configuration
        /// Resource type value for the ConfigurationProfile resource.
        case configurationProfile
        /// Resource type value for the Deployment resource.
        case deployment
        /// Resource type value for the Environment resource.
        case environment
        case sdkUnknown(Swift.String)

        public static var allCases: [ResourceType] {
            return [
                .application,
                .configuration,
                .configurationProfile,
                .deployment,
                .environment,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .application: return "Application"
            case .configuration: return "Configuration"
            case .configurationProfile: return "ConfigurationProfile"
            case .deployment: return "Deployment"
            case .environment: return "Environment"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = ResourceType(rawValue: rawValue) ?? ResourceType.sdkUnknown(rawValue)
        }
    }
}

extension StartConfigurationSessionInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case applicationIdentifier = "ApplicationIdentifier"
        case configurationProfileIdentifier = "ConfigurationProfileIdentifier"
        case environmentIdentifier = "EnvironmentIdentifier"
        case requiredMinimumPollIntervalInSeconds = "RequiredMinimumPollIntervalInSeconds"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationIdentifier = self.applicationIdentifier {
            try encodeContainer.encode(applicationIdentifier, forKey: .applicationIdentifier)
        }
        if let configurationProfileIdentifier = self.configurationProfileIdentifier {
            try encodeContainer.encode(configurationProfileIdentifier, forKey: .configurationProfileIdentifier)
        }
        if let environmentIdentifier = self.environmentIdentifier {
            try encodeContainer.encode(environmentIdentifier, forKey: .environmentIdentifier)
        }
        if let requiredMinimumPollIntervalInSeconds = self.requiredMinimumPollIntervalInSeconds {
            try encodeContainer.encode(requiredMinimumPollIntervalInSeconds, forKey: .requiredMinimumPollIntervalInSeconds)
        }
    }
}

extension StartConfigurationSessionInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/configurationsessions"
    }
}

public struct StartConfigurationSessionInput: Swift.Equatable {
    /// The application ID or the application name.
    /// This member is required.
    public var applicationIdentifier: Swift.String?
    /// The configuration profile ID or the configuration profile name.
    /// This member is required.
    public var configurationProfileIdentifier: Swift.String?
    /// The environment ID or the environment name.
    /// This member is required.
    public var environmentIdentifier: Swift.String?
    /// Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then the client that established the session can't call [GetLatestConfiguration] more frequently than every 60 seconds.
    public var requiredMinimumPollIntervalInSeconds: Swift.Int?

    public init(
        applicationIdentifier: Swift.String? = nil,
        configurationProfileIdentifier: Swift.String? = nil,
        environmentIdentifier: Swift.String? = nil,
        requiredMinimumPollIntervalInSeconds: Swift.Int? = nil
    )
    {
        self.applicationIdentifier = applicationIdentifier
        self.configurationProfileIdentifier = configurationProfileIdentifier
        self.environmentIdentifier = environmentIdentifier
        self.requiredMinimumPollIntervalInSeconds = requiredMinimumPollIntervalInSeconds
    }
}

struct StartConfigurationSessionInputBody: Swift.Equatable {
    let applicationIdentifier: Swift.String?
    let environmentIdentifier: Swift.String?
    let configurationProfileIdentifier: Swift.String?
    let requiredMinimumPollIntervalInSeconds: Swift.Int?
}

extension StartConfigurationSessionInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case applicationIdentifier = "ApplicationIdentifier"
        case configurationProfileIdentifier = "ConfigurationProfileIdentifier"
        case environmentIdentifier = "EnvironmentIdentifier"
        case requiredMinimumPollIntervalInSeconds = "RequiredMinimumPollIntervalInSeconds"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationIdentifierDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .applicationIdentifier)
        applicationIdentifier = applicationIdentifierDecoded
        let environmentIdentifierDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .environmentIdentifier)
        environmentIdentifier = environmentIdentifierDecoded
        let configurationProfileIdentifierDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .configurationProfileIdentifier)
        configurationProfileIdentifier = configurationProfileIdentifierDecoded
        let requiredMinimumPollIntervalInSecondsDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .requiredMinimumPollIntervalInSeconds)
        requiredMinimumPollIntervalInSeconds = requiredMinimumPollIntervalInSecondsDecoded
    }
}

extension StartConfigurationSessionOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: StartConfigurationSessionOutputBody = try responseDecoder.decode(responseBody: data)
            self.initialConfigurationToken = output.initialConfigurationToken
        } else {
            self.initialConfigurationToken = nil
        }
    }
}

public struct StartConfigurationSessionOutput: Swift.Equatable {
    /// Token encapsulating state about the configuration session. Provide this token to the GetLatestConfiguration API to retrieve configuration data. This token should only be used once in your first call to GetLatestConfiguration. You must use the new token in the GetLatestConfiguration response (NextPollConfigurationToken) in each subsequent call to GetLatestConfiguration. The InitialConfigurationToken and NextPollConfigurationToken should only be used once. To support long poll use cases, the tokens are valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    public var initialConfigurationToken: Swift.String?

    public init(
        initialConfigurationToken: Swift.String? = nil
    )
    {
        self.initialConfigurationToken = initialConfigurationToken
    }
}

struct StartConfigurationSessionOutputBody: Swift.Equatable {
    let initialConfigurationToken: Swift.String?
}

extension StartConfigurationSessionOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case initialConfigurationToken = "InitialConfigurationToken"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let initialConfigurationTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .initialConfigurationToken)
        initialConfigurationToken = initialConfigurationTokenDecoded
    }
}

enum StartConfigurationSessionOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "BadRequestException": return try await BadRequestException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerException": return try await InternalServerException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ThrottlingException": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension ThrottlingException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ThrottlingExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The request was denied due to request throttling.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
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

struct ThrottlingExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ThrottlingExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}
