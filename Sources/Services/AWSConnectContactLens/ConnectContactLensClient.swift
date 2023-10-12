// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ConnectContactLensClient {
    public static let clientName = "ConnectContactLensClient"
    let client: ClientRuntime.SdkHttpClient
    let config: ConnectContactLensClient.ConnectContactLensClientConfiguration
    let serviceName = "Connect Contact Lens"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: ConnectContactLensClient.ConnectContactLensClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try ConnectContactLensClient.ConnectContactLensClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await ConnectContactLensClient.ConnectContactLensClientConfiguration()
        self.init(config: config)
    }
}

extension ConnectContactLensClient {
    public typealias ConnectContactLensClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Connect Contact Lens" }
        public var clientName: String { "ConnectContactLensClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct ConnectContactLensClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "ConnectContactLensClient"
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

extension ConnectContactLensClient: ConnectContactLensClientProtocol {
    /// Provides a list of analysis segments for a real-time analysis session.
    ///
    /// - Parameter ListRealtimeContactAnalysisSegmentsInput : [no documentation found]
    ///
    /// - Returns: `ListRealtimeContactAnalysisSegmentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceException` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    public func listRealtimeContactAnalysisSegments(input: ListRealtimeContactAnalysisSegmentsInput) async throws -> ListRealtimeContactAnalysisSegmentsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRealtimeContactAnalysisSegments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "connect")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>(id: "listRealtimeContactAnalysisSegments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutput>(xmlName: "ListRealtimeContactAnalysisSegmentsRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListRealtimeContactAnalysisSegmentsOutput, ListRealtimeContactAnalysisSegmentsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
