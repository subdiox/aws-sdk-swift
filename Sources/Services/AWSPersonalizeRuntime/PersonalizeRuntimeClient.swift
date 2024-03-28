// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class PersonalizeRuntimeClient: Client {
    public static let clientName = "PersonalizeRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration
    let serviceName = "Personalize Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public required init(config: PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension PersonalizeRuntimeClient {
    public class PersonalizeRuntimeClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: ClientRuntime.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: ClientRuntime.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: [ClientRuntime.AuthScheme]?

        public var authSchemeResolver: ClientRuntime.AuthSchemeResolver

        internal let logger: ClientRuntime.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: ClientRuntime.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: ClientRuntime.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: [ClientRuntime.AuthScheme]?, _ authSchemeResolver: ClientRuntime.AuthSchemeResolver) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.telemetryProvider = telemetryProvider
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
            self.logger = telemetryProvider.loggerProvider.getLogger(name: PersonalizeRuntimeClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultPersonalizeRuntimeAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultPersonalizeRuntimeAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultPersonalizeRuntimeAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(PersonalizeRuntimeClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<PersonalizeRuntimeClient> {
        return ClientBuilder<PersonalizeRuntimeClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct PersonalizeRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "PersonalizeRuntimeClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension PersonalizeRuntimeClient {
    /// Performs the `GetActionRecommendations` operation on the `AmazonPersonalizeRuntime` service.
    ///
    /// Returns a list of recommended actions in sorted in descending order by prediction score. Use the GetActionRecommendations API if you have a custom campaign that deploys a solution version trained with a PERSONALIZED_ACTIONS recipe. For more information about PERSONALIZED_ACTIONS recipes, see [PERSONALIZED_ACTIONS recipes](https://docs.aws.amazon.com/personalize/latest/dg/nexts-best-action-recipes.html). For more information about getting action recommendations, see [Getting action recommendations](https://docs.aws.amazon.com/personalize/latest/dg/get-action-recommendations.html).
    ///
    /// - Parameter GetActionRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetActionRecommendationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : Provide a valid value for the field or parameter.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    public func getActionRecommendations(input: GetActionRecommendationsInput) async throws -> GetActionRecommendationsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getActionRecommendations")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "personalize")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetActionRecommendationsInput, GetActionRecommendationsOutput>(id: "getActionRecommendations")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetActionRecommendationsInput, GetActionRecommendationsOutput>(GetActionRecommendationsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetActionRecommendationsInput, GetActionRecommendationsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetActionRecommendationsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetActionRecommendationsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetActionRecommendationsInput, GetActionRecommendationsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetActionRecommendationsInput, GetActionRecommendationsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetActionRecommendationsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetActionRecommendationsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetActionRecommendationsOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetActionRecommendationsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetActionRecommendationsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetPersonalizedRanking` operation on the `AmazonPersonalizeRuntime` service.
    ///
    /// Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user. The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING.
    ///
    /// - Parameter GetPersonalizedRankingInput : [no documentation found]
    ///
    /// - Returns: `GetPersonalizedRankingOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : Provide a valid value for the field or parameter.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    public func getPersonalizedRanking(input: GetPersonalizedRankingInput) async throws -> GetPersonalizedRankingOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPersonalizedRanking")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "personalize")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetPersonalizedRankingInput, GetPersonalizedRankingOutput>(id: "getPersonalizedRanking")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutput>(GetPersonalizedRankingInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPersonalizedRankingOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetPersonalizedRankingOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetPersonalizedRankingInput, GetPersonalizedRankingOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetPersonalizedRankingOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetPersonalizedRankingOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPersonalizedRankingOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetPersonalizedRankingOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPersonalizedRankingOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetRecommendations` operation on the `AmazonPersonalizeRuntime` service.
    ///
    /// Returns a list of recommended items. For campaigns, the campaign's Amazon Resource Name (ARN) is required and the required user and item input depends on the recipe type used to create the solution backing the campaign as follows:
    ///
    /// * USER_PERSONALIZATION - userId required, itemId not used
    ///
    /// * RELATED_ITEMS - itemId required, userId not used
    ///
    ///
    /// Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. For recommenders, the recommender's ARN is required and the required item and user input depends on the use case (domain-based recipe) backing the recommender. For information on use case requirements see [Choosing recommender use cases](https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).
    ///
    /// - Parameter GetRecommendationsInput : [no documentation found]
    ///
    /// - Returns: `GetRecommendationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInputException` : Provide a valid value for the field or parameter.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    public func getRecommendations(input: GetRecommendationsInput) async throws -> GetRecommendationsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRecommendations")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "personalize")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRecommendationsInput, GetRecommendationsOutput>(id: "getRecommendations")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRecommendationsInput, GetRecommendationsOutput>(GetRecommendationsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRecommendationsInput, GetRecommendationsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRecommendationsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetRecommendationsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRecommendationsInput, GetRecommendationsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetRecommendationsInput, GetRecommendationsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRecommendationsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetRecommendationsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRecommendationsOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetRecommendationsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRecommendationsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
