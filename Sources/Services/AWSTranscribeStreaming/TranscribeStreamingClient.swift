// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class TranscribeStreamingClient: Client {
    public static let clientName = "TranscribeStreamingClient"
    let client: ClientRuntime.SdkHttpClient
    let config: TranscribeStreamingClient.TranscribeStreamingClientConfiguration
    let serviceName = "Transcribe Streaming"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public required init(config: TranscribeStreamingClient.TranscribeStreamingClientConfiguration) {
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
        let config = try TranscribeStreamingClient.TranscribeStreamingClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await TranscribeStreamingClient.TranscribeStreamingClientConfiguration()
        self.init(config: config)
    }
}

extension TranscribeStreamingClient {
    public class TranscribeStreamingClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: TranscribeStreamingClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultTranscribeStreamingAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultTranscribeStreamingAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultTranscribeStreamingAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(TranscribeStreamingClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<TranscribeStreamingClient> {
        return ClientBuilder<TranscribeStreamingClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct TranscribeStreamingClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "TranscribeStreamingClient"
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

extension TranscribeStreamingClient {
    /// Performs the `StartCallAnalyticsStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. Use this operation for [Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html) transcriptions. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartCallAnalyticsStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartCallAnalyticsStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startCallAnalyticsStreamTranscription(input: StartCallAnalyticsStreamTranscriptionInput) async throws -> StartCallAnalyticsStreamTranscriptionOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startCallAnalyticsStreamTranscription")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        try context.setupBidirectionalStreaming()
        var operation = ClientRuntime.OperationStack<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(id: "startCallAnalyticsStreamTranscription")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(StartCallAnalyticsStreamTranscriptionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartCallAnalyticsStreamTranscriptionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartCallAnalyticsStreamTranscriptionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(StartCallAnalyticsStreamTranscriptionInput.headerProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.EventStreamBodyMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: jsonMarshalClosure(requestEncoder: encoder)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartCallAnalyticsStreamTranscriptionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartCallAnalyticsStreamTranscriptionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartCallAnalyticsStreamTranscriptionOutput>(responseClosure(decoder: decoder), responseErrorClosure(StartCallAnalyticsStreamTranscriptionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartCallAnalyticsStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StartMedicalStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe Medical and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe Medical, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartMedicalStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartMedicalStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startMedicalStreamTranscription(input: StartMedicalStreamTranscriptionInput) async throws -> StartMedicalStreamTranscriptionOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startMedicalStreamTranscription")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        try context.setupBidirectionalStreaming()
        var operation = ClientRuntime.OperationStack<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(id: "startMedicalStreamTranscription")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(StartMedicalStreamTranscriptionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartMedicalStreamTranscriptionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartMedicalStreamTranscriptionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(StartMedicalStreamTranscriptionInput.headerProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.EventStreamBodyMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: jsonMarshalClosure(requestEncoder: encoder)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartMedicalStreamTranscriptionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartMedicalStreamTranscriptionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartMedicalStreamTranscriptionOutput>(responseClosure(decoder: decoder), responseErrorClosure(StartMedicalStreamTranscriptionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartMedicalStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StartStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code or identify-language or identify-multiple-language
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startStreamTranscription(input: StartStreamTranscriptionInput) async throws -> StartStreamTranscriptionOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startStreamTranscription")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        try context.setupBidirectionalStreaming()
        var operation = ClientRuntime.OperationStack<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(id: "startStreamTranscription")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(StartStreamTranscriptionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartStreamTranscriptionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartStreamTranscriptionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(StartStreamTranscriptionInput.headerProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.EventStreamBodyMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: jsonMarshalClosure(requestEncoder: encoder)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartStreamTranscriptionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartStreamTranscriptionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartStreamTranscriptionOutput>(responseClosure(decoder: decoder), responseErrorClosure(StartStreamTranscriptionOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
